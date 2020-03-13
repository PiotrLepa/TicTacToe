part of 'start_game_bloc.dart';

@freezed
abstract class StartGameEvent with _$StartGameEvent {
  const factory StartGameEvent.onStartGameTapped() = OnStartGameTapped;

  const factory StartGameEvent.onEasyTapped() = OnEasyTapped;

  const factory StartGameEvent.onMediumTapped() = OnMediumTapped;

  const factory StartGameEvent.onHardTapped() = OnHardTapped;
}
