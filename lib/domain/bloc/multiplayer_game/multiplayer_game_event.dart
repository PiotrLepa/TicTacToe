part of 'multiplayer_game_bloc.dart';

@freezed
abstract class MultiplayerGameEvent with _$MultiplayerGameEvent {
  const factory MultiplayerGameEvent.screenStarted(int gameId) = ScreenStarted;

  const factory MultiplayerGameEvent.onNewGameState(
    MultiplayerGameResponse game,
  ) = OnNewGameState;

  const factory MultiplayerGameEvent.restartGame() = RestartGame;

  const factory MultiplayerGameEvent.onFieldTapped(int index) = OnFieldTapped;
}
