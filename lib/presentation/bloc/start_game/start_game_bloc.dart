import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/presentation/bloc_helper.dart';
import 'package:tictactoe/core/util/logger/logger.dart';
import 'package:tictactoe/core/util/raw_key_string.dart';
import 'package:tictactoe/domain/common/difficulty_level/difficulty_level.dart';
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
      onStartGameTapped: onStartGameTapped,
      onEasyTapped: onEasyTapped,
      onMediumTapped: onMediumTapped,
      onHardTapped: onHardTapped,
    );
  }

  Stream<StartGameState> onStartGameTapped(_OnStartGameTapped event) async* {
    yield StartGameState.showDifficultyLevelButtons();
    yield StartGameState.nothing();
  }

  Stream<StartGameState> onEasyTapped(_OnEasyTapped event) async* {
    yield* fetch(_createGameRepository.createGame(DifficultyLevel.easy)).map(
          (state) =>
          state.map(
            progress: (_) => StartGameState.progress(),
            success: (success) {
              final string = success.result.toString();
              logger.d(string);
//    Router.navigator.pop();
//    Router.navigator.pushNamed(Router.gameScreen);
              return StartGameState.success(string);
            },
            error: (error) => StartGameState.error(error.errorMessage),
          ),
    );
  }

  Stream<StartGameState> onMediumTapped(_OnMediumTapped event) async* {
    Router.navigator.pop();
    Router.navigator.pushNamed(Router.gameScreen);
  }

  Stream<StartGameState> onHardTapped(_OnHardTapped event) async* {
    Router.navigator.pop();
    Router.navigator.pushNamed(Router.gameScreen);
  }
}
