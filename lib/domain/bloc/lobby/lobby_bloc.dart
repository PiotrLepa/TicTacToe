import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/common/router/router.gr.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/core/domain/validation/validators.dart';
import 'package:tictactoe/domain/entity/multiplayer_game_created_response/multiplayer_game_created_response.dart';
import 'package:tictactoe/domain/repository/multiplayer_game_repository.dart';
import 'package:tictactoe/domain/repository/user_repository.dart';

part 'lobby_bloc.freezed.dart';
part 'lobby_event.dart';
part 'lobby_state.dart';

@injectable
class LobbyBloc extends Bloc<LobbyEvent, LobbyState> {
  final MultiplayerGameRepository _multiplayerGameRepository;
  final UserRepository _userRepository;
  final Validator _validator;

  LobbyBloc(
    this._multiplayerGameRepository,
    this._userRepository,
    this._validator,
  );

  @override
  LobbyState get initialState => LobbyState.loading();

  @override
  Stream<LobbyState> mapEventToState(LobbyEvent event) async* {
    yield* event.map(
      screenStarted: _mapScreenStartedEvent,
      startGamePressed: _mapStartGamePressedEvent,
    );
  }

  Stream<LobbyState> _mapScreenStartedEvent(ScreenStarted event) async* {
    final request = fetch(_userRepository.getUserProfile());
    await for (final requestState in request) {
      yield* requestState.when(
        progress: () async* {
          yield LobbyState.loading();
        },
        success: (response) async* {
          yield LobbyState.renderPage(
            playerCode: response.playerCode,
          );
        },
        error: (errorMessage) async* {
          yield LobbyState.error(errorMessage);
        },
      );
    }
  }

  Stream<LobbyState> _mapStartGamePressedEvent(StartGamePressed event) async* {
    final codeValidation = _validator.validateOpponentCode(event.opponentCode);
    if (codeValidation != null) {
      yield LobbyState.renderOpponentCodeInputError(
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
        progress: () async* {
          yield LobbyState.createGameLoading();
        },
        success: (response) async* {
          yield LobbyState.createGameSuccess();
          _pushGameScreen(response);
        },
        error: (errorMessage) async* {
          yield LobbyState.createGameError(errorMessage);
        },
      );
    }
  }

  void _pushGameScreen(MultiplayerGameCreatedResponse response) {
    ExtendedNavigator.ofRouter<Router>().pushMultiplayerGameScreen(
      gameId: response.gameId,
      socketDestination: response.socketDestination,
      playerMark: response.yourMark,
      playerType: response.playerType,
      fromNotification: false,
    );
  }
}
