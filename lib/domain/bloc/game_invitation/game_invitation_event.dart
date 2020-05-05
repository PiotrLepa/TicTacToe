part of 'game_invitation_bloc.dart';

@freezed
abstract class GameInvitationEvent with _$GameInvitationEvent {
  const factory GameInvitationEvent.screenStarted() = ScreenStarted;

  const factory GameInvitationEvent.onMessageReceived(
      Map<String, dynamic> message) = OnMessageReceived;
}
