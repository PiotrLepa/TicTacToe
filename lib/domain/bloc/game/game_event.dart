part of 'game_bloc.dart';

@freezed
abstract class GameEvent with _$GameEvent {
  const factory GameEvent.createGame(DifficultyLevel difficultyLevel) =
      CreateGame;

  const factory GameEvent.restartGame(DifficultyLevel difficultyLevel) =
      RestartGame;

  const factory GameEvent.onFieldTapped(int index) = OnFieldTapped;
}
