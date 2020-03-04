import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
  ) async* {}
}
