import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/domain/entity/common/game_status/game_status.dart';
import 'package:tictactoe/domain/entity/single_player_game_response/single_player_game_response.dart';
import 'package:tictactoe/domain/repository/single_player_game_repository.dart';

part 'single_player_game_bloc.freezed.dart';
part 'single_player_game_event.dart';
part 'single_player_game_state.dart';

@injectable
class SinglePlayerGameBloc
    extends Bloc<SinglePlayerGameEvent, SinglePlayerGameState> {
  final SinglePlayerGameRepository _gameRepository;

  late SinglePlayerGameResponse _gameResponse;

  SinglePlayerGameBloc(
    this._gameRepository,
  ) : super(const SinglePlayerGameState.nothing());

  @override
  Stream<SinglePlayerGameState> mapEventToState(
    SinglePlayerGameEvent event,
  ) async* {
    yield* event.map(
      createGame: _onCreateGame,
      onFieldTapped: _onFieldTapped,
      restartGame: _onRestartGame,
    );
  }

  Stream<SinglePlayerGameState> _onCreateGame(CreateGame event) async* {
    yield const SinglePlayerGameState.pop();
    yield SinglePlayerGameState.navigateToGame(event.difficultyLevel);
    yield* _createGame(event.difficultyLevel);
  }

  Stream<SinglePlayerGameState> _onFieldTapped(OnFieldTapped event) async* {
    yield* _setMove(_gameResponse.gameId, event.index);
  }

  Stream<SinglePlayerGameState> _onRestartGame(RestartGame event) async* {
    yield* _createGame(event.difficultyLevel);
  }

  Stream<SinglePlayerGameState> _createGame(
      DifficultyLevel difficultyLevel) async* {
    final request = fetch(_gameRepository.createGame(difficultyLevel));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
          yield const SinglePlayerGameState.loading();
        },
        success: (response) async* {
          _gameResponse = response;
          yield SinglePlayerGameState.renderGame(
            playerMark: response.playerMark,
            moves: response.moves,
          );
        },
        error: (message) async* {
          yield SinglePlayerGameState.error(message);
        },
      );
    }
  }

  Stream<SinglePlayerGameState> _setMove(int gameId, int fieldIndex) async* {
    if (_gameResponse.status != GameStatus.onGoing ||
        !_isFieldEmpty(_gameResponse.moves, fieldIndex)) {
      return;
    }
    final request = fetch(_gameRepository.setMove(gameId, fieldIndex));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
          yield const SinglePlayerGameState.moveLoading();
        },
        success: (response) async* {
          _gameResponse = response;
          yield SinglePlayerGameState.renderGame(
            playerMark: response.playerMark,
            moves: response.moves,
          );
          switch (response.status) {
            case GameStatus.onGoing:
              break;
            case GameStatus.playerWon:
              yield const SinglePlayerGameState.playerWon();
              break;
            case GameStatus.computerWon:
              yield const SinglePlayerGameState.computerWon();
              break;
            case GameStatus.draw:
              yield const SinglePlayerGameState.draw();
              break;
          }
        },
        error: (errorMessage) async* {
          yield SinglePlayerGameState.moveError(errorMessage);
        },
      );
    }
  }

  bool _isFieldEmpty(KtList<GameMove> moves, int fieldIndex) =>
      moves.filter((move) => move.fieldIndex == fieldIndex).isEmpty();
}
