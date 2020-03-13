import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/presentation/bloc_helper.dart';
import 'package:tictactoe/core/util/raw_key_string.dart';
import 'package:tictactoe/domain/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/game_response/game_response.dart';
import 'package:tictactoe/domain/repository/create_game_repository.dart';
import 'package:tictactoe/presentation/screens/router/router.gr.dart';

part 'start_game_bloc.freezed.dart';
part 'start_game_event.dart';
part 'start_game_state.dart';

@injectable
class StartGameBloc extends Bloc<StartGameEvent, StartGameState> {
  final CreateGameRepository _createGameRepository;

  StartGameBloc(this._createGameRepository);

  @override
  StartGameState get initialState => StartGameState.nothing();

  @override
  Stream<StartGameState> mapEventToState(
    StartGameEvent event,
  ) async* {
    yield* event.map(
      onStartGameTapped: _onStartGameTapped,
      onEasyTapped: _onEasyTapped,
      onMediumTapped: _onMediumTapped,
      onHardTapped: _onHardTapped,
    );
  }

  Stream<StartGameState> _onStartGameTapped(OnStartGameTapped event) async* {
    yield StartGameState.showDifficultyLevelButtons();
    yield StartGameState.nothing();
  }

  Stream<StartGameState> _onEasyTapped(OnEasyTapped event) async* {
    Router.navigator.pop();
    yield* _createGame(DifficultyLevel.easy);
  }

  Stream<StartGameState> _onMediumTapped(OnMediumTapped event) async* {
    Router.navigator.pop();
    yield* _createGame(DifficultyLevel.medium);
  }

  Stream<StartGameState> _onHardTapped(OnHardTapped event) async* {
    Router.navigator.pop();
    yield* _createGame(DifficultyLevel.hard);
  }

  Stream<StartGameState> _createGame(DifficultyLevel difficultyLevel) async* {
    yield* fetch(_createGameRepository.createGame(difficultyLevel)).map(
      (state) => state.map(
        progress: (_) => StartGameState.showLoading(),
        success: (success) {
          final result = success.result;
          _pushGameScreen(result);
          return StartGameState.nothing();
        },
        error: (error) => StartGameState.error(error.errorMessage),
      ),
    );
  }

  void _pushGameScreen(GameResponse result) {
    Router.navigator.pushNamed(
      Router.gameScreen,
      arguments: GameScreenArguments(
        gameId: result.gameId,
        playerMark: result.playerMark,
      ),
    );
  }
}
