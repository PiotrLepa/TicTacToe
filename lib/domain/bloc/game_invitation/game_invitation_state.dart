part of 'game_invitation_bloc.dart';

@freezed
class GameInvitationState with _$GameInvitationState {
  const factory GameInvitationState.nothing() = Nothing;

  const factory GameInvitationState.showGameInvitation(GameInvitation data) =
      ShowGameInvitation;
}
