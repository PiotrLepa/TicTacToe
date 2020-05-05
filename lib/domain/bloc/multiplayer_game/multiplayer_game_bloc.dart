import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_game_status/multiplayer_game_status.dart';
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
      screenStarted: _mapOnScreenStartedEvent,
      onFieldTapped: _mapOnFieldTappedEvent,
      onNewGameState: _mapOnNewsGameStateEvent,
      restartGame: _mapOnRestartGameEvent,
    );
  }

  Stream<MultiplayerGameState> _mapOnScreenStartedEvent(
    ScreenStarted event,
  ) async* {
    _getGameEvents(event.gameId).listen((gameState) => add(gameState));

    if (event.fromNotification) {
      // make sure STOMP client has enough time to connect with server socket
      await Future.delayed(Duration(seconds: 2));
      yield* _joinToGame(event.gameId);
    } else {
      yield MultiplayerGameState.renderWaitingForOpponent();
    }
  }

  Stream<MultiplayerGameState> _mapOnNewsGameStateEvent(
      OnNewGameState event,) async* {
    yield MultiplayerGameState.renderGame(event.game);
  }

  Stream<MultiplayerGameState> _mapOnFieldTappedEvent(
      OnFieldTapped event) async* {
    if (_gameResponse.status != MultiplayerGameStatus.onGoing ||
        !_isFieldEmpty(_gameResponse.moves, event.index)) {
      return;
    }
    yield* _setMove(_gameResponse.gameId, event.index);
  }

  Stream<MultiplayerGameState> _mapOnRestartGameEvent(
      RestartGame event) async* {
//    yield* _createGame(event.opponentCode);
  }

  Stream<MultiplayerGameEvent> _getGameEvents(int gameId) async* {
    yield* _gameRepository.getMultiplayerGame(gameId).map((game) {
      _gameResponse = game;
      return MultiplayerGameEvent.onNewGameState(game);
    });
  }

  Stream<MultiplayerGameState> _setMove(int gameId, int fieldIndex) async* {
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

  Stream<MultiplayerGameState> _joinToGame(int gameId) async* {
    final request = fetch(_gameRepository.joinToGame(gameId));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {},
        success: (response) async* {},
        error: (errorMessage) async* {},
      );
    }
  }
}
