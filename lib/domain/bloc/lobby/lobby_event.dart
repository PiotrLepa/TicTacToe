part of 'lobby_bloc.dart';

@freezed
class LobbyEvent with _$LobbyEvent {
  const factory LobbyEvent.screenStarted() = ScreenStarted;

  const factory LobbyEvent.startGamePressed(String opponentCode) =
      StartGamePressed;
}
