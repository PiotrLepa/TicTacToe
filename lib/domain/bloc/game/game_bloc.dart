import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/domain/entity/common/game_status/game_status.dart';
import 'package:tictactoe/domain/repository/create_game_repository.dart';
import 'package:tictactoe/presentation/screens/router/router.gr.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';
part 'game_state.dart';

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {
  final CreateGameRepository _createGameRepository;

  int _gameId;
  GameStatus _currentGameStatus;

  GameBloc(this._createGameRepository);

  @override
  GameState get initialState => GameState.nothing();

  @override
  Stream<GameState> mapEventToState(
    GameEvent event,
  ) async* {
    yield* event.map(
      onEasyTapped: _onEasyTapped,
      onMediumTapped: _onMediumTapped,
      onHardTapped: _onHardTapped,
      onFieldTapped: _onFieldTapped,
    );
  }

  Stream<GameState> _onFieldTapped(OnFieldTapped event) async* {
    yield* _setMove(_gameId, event.index);
  }

  Stream<GameState> _onEasyTapped(OnEasyTapped event) async* {
    Router.navigator.pop();
    _pushGameScreen(DifficultyLevel.easy);
    yield* _createGame(DifficultyLevel.easy);
  }

  Stream<GameState> _onMediumTapped(OnMediumTapped event) async* {
    Router.navigator.pop();
    _pushGameScreen(DifficultyLevel.medium);
    yield* _createGame(DifficultyLevel.medium);
  }

  Stream<GameState> _onHardTapped(OnHardTapped event) async* {
    Router.navigator.pop();
    _pushGameScreen(DifficultyLevel.hard);
    yield* _createGame(DifficultyLevel.hard);
  }

  Stream<GameState> _createGame(DifficultyLevel difficultyLevel) async* {
    final request = fetch(_createGameRepository.createGame(difficultyLevel));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
          yield GameState.loading();
        },
        success: (response) async* {
          _gameId = response.gameId;
          _currentGameStatus = response.status;
          yield GameState.renderGame(
            playerMark: response.playerMark,
            moves: response.moves,
          );
        },
        error: (errorMessage) async* {
          yield GameState.error(errorMessage);
        },
      );
    }
  }

  Stream<GameState> _setMove(int gameId, int fieldIndex) async* {
    if (_currentGameStatus != GameStatus.onGoing) {
      return;
    }
    final request = fetch(_createGameRepository.setMove(gameId, fieldIndex));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
          yield GameState.moveLoading();
        },
        success: (response) async* {
          _currentGameStatus = response.status;
          yield GameState.renderGame(
            playerMark: response.playerMark,
            moves: response.moves,
          );
          switch (response.status) {
            case GameStatus.onGoing:
              break;
            case GameStatus.playerWon:
              yield GameState.playerWon();
              break;
            case GameStatus.computerWon:
              yield GameState.draw();
              break;
            case GameStatus.draw:
              yield GameState.draw();
              break;
          }
        },
        error: (errorMessage) async* {
          yield GameState.moveError(errorMessage);
        },
      );
    }
  }

  void _pushGameScreen(DifficultyLevel difficultyLevel) {
    Router.navigator.pushNamed(
      Router.gameScreen,
      arguments: GameScreenArguments(
        difficultyLevel: difficultyLevel,
      ),
    );
  }
}
