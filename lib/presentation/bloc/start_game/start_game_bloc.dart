import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/presentation/screens/router/router.gr.dart';

part 'start_game_bloc.freezed.dart';
part 'start_game_event.dart';
part 'start_game_state.dart';

@injectable
class StartGameBloc extends Bloc<StartGameEvent, StartGameState> {
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
    Router.navigator.pop();
    Router.navigator.pushNamed(Router.gameScreen);
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
