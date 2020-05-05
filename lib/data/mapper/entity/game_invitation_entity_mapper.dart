import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_mark_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/multiplayer_player_type_entity_mapper.dart';
import 'package:tictactoe/data/model/game_invitation/game_invitation_model.dart';
import 'package:tictactoe/domain/entity/game_invitation/game_invitation.dart';

@lazySingleton
class GameInvitationEntityMapper
    implements EntityMapper<GameInvitation, GameInvitationModel> {
  final GameMarkEntityMapper _gameMarkEntityMapper;
  final MultiplayerPlayerTypeEntityMapper _multiplayerPlayerTypeEntityMapper;

  GameInvitationEntityMapper(
    this._gameMarkEntityMapper,
    this._multiplayerPlayerTypeEntityMapper,
  );

  @override
  GameInvitation toEntity(GameInvitationModel model) => GameInvitation(
        gameId: int.parse(model.gameId),
        yourMark: _gameMarkEntityMapper.toEntity(model.yourMark),
        playerType:
            _multiplayerPlayerTypeEntityMapper.toEntity(model.playerType),
        body: model.body,
      );
}
