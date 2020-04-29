part of 'multiplayer_game_bloc.dart';

@freezed
abstract class MultiplayerGameEvent with _$MultiplayerGameEvent {
  const factory MultiplayerGameEvent.createGame(String opponentCode) =
      CreateGame;

  const factory MultiplayerGameEvent.restartGame(String opponentCode) =
      RestartGame;

  const factory MultiplayerGameEvent.onFieldTapped(int index) = OnFieldTapped;
}
