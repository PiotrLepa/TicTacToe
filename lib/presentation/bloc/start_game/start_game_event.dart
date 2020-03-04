part of 'start_game_bloc.dart';

@freezed
abstract class StartGameEvent with _$StartGameEvent {
  const factory StartGameEvent.onStartGameTapped() = _OnStartGameTapped;
}
