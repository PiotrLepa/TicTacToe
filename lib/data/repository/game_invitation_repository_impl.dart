import 'package:injectable/injectable.dart';
import 'package:tictactoe/data/mapper/entity/game_invitation_entity_mapper.dart';
import 'package:tictactoe/data/service/firebase_messaging_service.dart';
import 'package:tictactoe/domain/entity/game_invitation/game_invitation.dart';
import 'package:tictactoe/domain/repository/game_invitation_repository.dart';

@RegisterAs(GameInvitationRepository)
@lazySingleton
class GameInvitationRepositoryImpl implements GameInvitationRepository {
  final FirebaseMessagingService _firebaseMessagingService;
  final GameInvitationEntityMapper _gameInvitationEntityMapper;

  GameInvitationRepositoryImpl(
    this._firebaseMessagingService,
    this._gameInvitationEntityMapper,
  );

  @override
  Stream<GameInvitation> getGameInvitations() => _firebaseMessagingService
      .getGameInvitations()
      .map(_gameInvitationEntityMapper.toEntity);
}
