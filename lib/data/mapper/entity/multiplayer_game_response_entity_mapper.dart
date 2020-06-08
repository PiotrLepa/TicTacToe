import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/core/extension/iterable_extension.dart';
import 'package:tictactoe/data/mapper/entity/game_move_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/multiplayer_game_status_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/multiplayer_player_type_entity_mapper.dart';
import 'package:tictactoe/data/model/multiplayer_game_response/multiplayer_game_response_model.dart';
import 'package:tictactoe/domain/entity/multiplayer_game_response/multiplayer_game_response.dart';

@lazySingleton
class MultiplayerGameResponseEntityMapper
    implements
        EntityMapper<MultiplayerGameResponse, MultiplayerGameResponseModel> {
  final GameMoveEntityMapper _gameMoveEntityMapper;
  final MultiplayerGameStatusEntityMapper _multiplayerGameStatusEntityMapper;
  final MultiplayerPlayerTypeEntityMapper _multiplayerPlayerTypeEntityMapper;

  MultiplayerGameResponseEntityMapper(
    this._multiplayerGameStatusEntityMapper,
    this._multiplayerPlayerTypeEntityMapper,
    this._gameMoveEntityMapper,
  );

  @override
  MultiplayerGameResponse toEntity(MultiplayerGameResponseModel model) =>
      MultiplayerGameResponse(
        gameId: model.gameId,
        status: _multiplayerGameStatusEntityMapper.toEntity(model.status),
        currentTurn:
            _multiplayerPlayerTypeEntityMapper.toEntity(model.currentTurn),
        moves: model.moves.map(_gameMoveEntityMapper.toEntity).toKtList(),
      );
}
