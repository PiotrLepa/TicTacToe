part of 'lobby_bloc.dart';

@freezed
abstract class LobbyEvent with _$LobbyEvent {
  const factory LobbyEvent.screenStarted() = ScreenStarted;

  const factory LobbyEvent.startGamePressed(String opponentCode) =
      StartGamePressed;
}
