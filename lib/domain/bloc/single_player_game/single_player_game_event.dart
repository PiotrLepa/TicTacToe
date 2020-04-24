part of 'single_player_game_bloc.dart';

@freezed
abstract class SinglePlayerGameEvent with _$SinglePlayerGameEvent {
  const factory SinglePlayerGameEvent.createGame(
      DifficultyLevel difficultyLevel) = CreateGame;

  const factory SinglePlayerGameEvent.restartGame(
      DifficultyLevel difficultyLevel) = RestartGame;

  const factory SinglePlayerGameEvent.onFieldTapped(int index) = OnFieldTapped;
}
