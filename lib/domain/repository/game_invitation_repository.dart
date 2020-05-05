import 'package:tictactoe/domain/entity/game_invitation/game_invitation.dart';

abstract class GameInvitationRepository {
  Stream<GameInvitation> getGameInvitations();
}
