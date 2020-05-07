part of 'multiplayer_game_bloc.dart';

@freezed
abstract class MultiplayerGameEvent with _$MultiplayerGameEvent {
  const factory MultiplayerGameEvent.screenStarted({
    @required int gameId,
    @required String socketDestination,
    @required MultiplayerPlayerType playerType,
    @required bool fromNotification,
  }) = ScreenStarted;

  const factory MultiplayerGameEvent.onNewGameState(
    MultiplayerGameResponse game,
  ) = OnNewGameState;

  const factory MultiplayerGameEvent.restartGame() = RestartGame;

  const factory MultiplayerGameEvent.onFieldTapped(int index) = OnFieldTapped;
}
