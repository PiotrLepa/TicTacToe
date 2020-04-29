import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/common/router/router.gr.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/domain/entity/multiplayer_game_response/multiplayer_game_response.dart';
import 'package:tictactoe/domain/repository/multiplayer_game_repository.dart';

part 'multiplayer_game_bloc.freezed.dart';

part 'multiplayer_game_event.dart';

part 'multiplayer_game_state.dart';

@injectable
class MultiplayerGameBloc
    extends Bloc<MultiplayerGameEvent, MultiplayerGameState> {
  final MultiplayerGameRepository _gameRepository;

  MultiplayerGameResponse _gameResponse;

  MultiplayerGameBloc(this._gameRepository);

  @override
  MultiplayerGameState get initialState => MultiplayerGameState.loading();

  @override
  Stream<MultiplayerGameState> mapEventToState(
    MultiplayerGameEvent event,
  ) async* {
    yield* event.map(
      createGame: _onCreateGame,
      onFieldTapped: _onFieldTapped,
      restartGame: _onRestartGame,
    );
  }

  Stream<MultiplayerGameState> _onCreateGame(CreateGame event) async* {
    ExtendedNavigator.ofRouter<Router>().pop();
    _pushGameScreen();
    yield* _createGame(event.opponentCode);
  }

  Stream<MultiplayerGameState> _onFieldTapped(OnFieldTapped event) async* {
    yield* _setMove(_gameResponse.gameId, event.index);
  }

  Stream<MultiplayerGameState> _onRestartGame(RestartGame event) async* {
    yield* _createGame(event.opponentCode);
  }

  Stream<MultiplayerGameState> _createGame(String opponentCode) async* {
    final request = fetch(_gameRepository.createGame(opponentCode));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
          yield MultiplayerGameState.loading();
        },
        success: (response) async* {},
        error: (errorMessage) async* {
          yield MultiplayerGameState.error(errorMessage);
        },
      );
    }
  }

  Stream<MultiplayerGameState> _setMove(int gameId, int fieldIndex) async* {
//    if (_gameResponse.status != GameStatus.onGoing ||
//        !_isFieldEmpty(_gameResponse.moves, fieldIndex)) {
//      return;
//    } // TODO
    final request = fetch(_gameRepository.setMove(gameId, fieldIndex));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
          yield MultiplayerGameState.moveLoading();
        },
        success: (response) async* {},
        error: (errorMessage) async* {
          yield MultiplayerGameState.moveError(errorMessage);
        },
      );
    }
  }

  bool _isFieldEmpty(KtList<GameMove> moves, int fieldIndex) =>
      moves.filter((move) => move.fieldIndex == fieldIndex).isEmpty();

  void _pushGameScreen() {
    ExtendedNavigator.ofRouter<Router>().pushMultiplayerGameScreen();
  }
}
