part of 'start_game_bloc.dart';

@freezed
abstract class StartGameEvent with _$StartGameEvent {
  const factory StartGameEvent.onStartGameTapped() = _OnStartGameTapped;

  const factory StartGameEvent.onEasyTapped() = _OnEasyTapped;

  const factory StartGameEvent.onMediumTapped() = _OnMediumTapped;

  const factory StartGameEvent.onHardTapped() = _OnHardTapped;
}
