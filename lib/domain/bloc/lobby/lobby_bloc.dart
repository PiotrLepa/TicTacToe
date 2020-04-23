import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/core/domain/validation/validators.dart';
import 'package:tictactoe/domain/repository/multiplayer_game_repository.dart';

part 'lobby_bloc.freezed.dart';

part 'lobby_event.dart';

part 'lobby_state.dart';

@injectable
class LobbyBloc extends Bloc<LobbyEvent, LobbyState> {
  final MultiplayerGameRepository _multiplayerGameRepository;
  final Validator _validator;

  LobbyBloc(
    this._multiplayerGameRepository,
    this._validator,
  );

  @override
  LobbyState get initialState => LobbyState.loading(playerCode: "");

  @override
  Stream<LobbyState> mapEventToState(LobbyEvent event) async* {
    yield* event.map(
      screenStarted: _mapScreenStartedEvent,
      startGamePressed: _mapStartGamePressedEvent,
    );
  }

  Stream<LobbyState> _mapScreenStartedEvent(ScreenStarted event) async* {
    // TODO fetch user profile
    await Future.delayed(Duration(seconds: 1));
    yield LobbyState.renderPlayerCode(playerCode: '87945387');
  }

  Stream<LobbyState> _mapStartGamePressedEvent(StartGamePressed event) async* {
    final codeValidation = _validator.validateOpponentCode(event.opponentCode);
    if (codeValidation != null) {
      yield LobbyState.renderOpponentCodeInputError(
        playerCode: state.playerCode,
        errorKey: codeValidation,
      );
    } else {
      yield* _createMultiplayerGame(event.opponentCode);
    }
  }

  Stream<LobbyState> _createMultiplayerGame(String opponentCode) async* {
    final request = fetch(_multiplayerGameRepository.createGame(opponentCode));
    await for (final requestState in request) {
      yield* requestState.when(
        progress: () async* {},
        success: (response) async* {
          yield LobbyState.createGameSuccess(
            playerCode: state.playerCode,
          );
          _pushMultiplayerGameScreen();
        },
        error: (errorMessage) async* {
          yield LobbyState.error(
            playerCode: state.playerCode,
            errorMessage: errorMessage,
          );
        },
      );
    }
  }

  void _pushMultiplayerGameScreen() {}
}
