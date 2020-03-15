import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/presentation/bloc_helper.dart';
import 'package:tictactoe/core/util/raw_key_string.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/domain/repository/create_game_repository.dart';
import 'package:tictactoe/presentation/screens/router/router.gr.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';
part 'game_state.dart';

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {
  final CreateGameRepository _createGameRepository;

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
    final gameCreatedState = state as GameCreated;
    if (_isFieldEmpty(gameCreatedState.moves, event)) {
      yield* _setMove(gameCreatedState.gameId, event.index);
    }
  }

  bool _isFieldEmpty(BuiltList<GameMove> moves, OnFieldTapped event) =>
      moves.where((move) => move.fieldIndex == event.index).isEmpty;

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
    yield* fetch(_createGameRepository.createGame(difficultyLevel)).map(
          (state) =>
          state.map(
            progress: (_) => GameState.loading(),
            success: (success) {
              final result = success.result;
              return GameState.gameCreated(
                gameId: result.gameId,
                playerMark: result.playerMark,
                moves: result.moves,
              );
            },
            error: (error) => GameState.error(error.errorMessage),
          ),
    );
  }

  Stream<GameState> _setMove(int gameId, int fieldIndex) async* {
    yield* fetch(_createGameRepository.setMove(gameId, fieldIndex)).map(
          (state) =>
          state.map(
            progress: (_) => this.state,
            success: (success) {
              final result = success.result;
              return GameState.gameCreated(
                gameId: result.gameId,
                playerMark: result.playerMark,
                moves: result.moves,
              );
            },
            error: (error) => GameState.error(error.errorMessage),
          ),
    );
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
