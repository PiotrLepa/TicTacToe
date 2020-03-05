import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/presentation/bloc_helper.dart';
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
    StartGameEvent event,) async* {
    final state = event.map(
      onStartGameTapped: (_) => StartGameState.showDifficultyLevelButtons(),
      onEasyTapped: (_) => Router.navigator.pushNamed(Router.gameScreen),
      onMediumTapped: (_) => Router.navigator.pushNamed(Router.gameScreen),
      onHardTapped: (_) => Router.navigator.pushNamed(Router.gameScreen),
    );

    yield* dispatchState(state);
  }

  Stream<StartGameState> t() {
    return Stream.value(StartGameState.showDifficultyLevelButtons());
  }
}
