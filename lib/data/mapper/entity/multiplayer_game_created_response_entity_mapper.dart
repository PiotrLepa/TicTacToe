import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_mark_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/multiplayer_player_type_entity_mapper.dart';
import 'package:tictactoe/data/model/multiplayer_game_created_response/multiplayer_game_created_response_model.dart';
import 'package:tictactoe/domain/entity/multiplayer_game_created_response/multiplayer_game_created_response.dart';

@lazySingleton
class MultiplayerGameCreatedResponseEntityMapper
    implements
        EntityMapper<MultiplayerGameCreatedResponse,
            MultiplayerGameCreatedResponseModel> {
  final MultiplayerPlayerTypeEntityMapper _multiplayerPlayerTypeEntityMapper;
  final GameMarkEntityMapper _gameMarkEntityMapper;

  MultiplayerGameCreatedResponseEntityMapper(
    this._gameMarkEntityMapper,
    this._multiplayerPlayerTypeEntityMapper,
  );

  @override
  MultiplayerGameCreatedResponse toEntity(
          MultiplayerGameCreatedResponseModel model) =>
      MultiplayerGameCreatedResponse(
        gameId: int.parse(model.gameId),
        yourMark: _gameMarkEntityMapper.toEntity(model.yourMark),
        playerType:
            _multiplayerPlayerTypeEntityMapper.toEntity(model.playerType),
      );
}
