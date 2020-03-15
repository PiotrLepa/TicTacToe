part of 'game_bloc.dart';

@freezed
abstract class GameEvent with _$GameEvent {
  const factory GameEvent.onEasyTapped() = OnEasyTapped;

  const factory GameEvent.onMediumTapped() = OnMediumTapped;

  const factory GameEvent.onHardTapped() = OnHardTapped;

  const factory GameEvent.onFieldTapped(int index) = OnFieldTapped;
}
