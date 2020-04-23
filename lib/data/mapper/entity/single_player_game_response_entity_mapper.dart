import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/core/extension/iterable_extension.dart';
import 'package:tictactoe/data/mapper/entity/difficilty_level_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_mark_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_move_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/single_player_game_status_entity_mapper.dart';
import 'package:tictactoe/data/model/single_player_game_response/single_player_game_response_model.dart';
import 'package:tictactoe/domain/entity/single_player_game_response/single_player_game_response.dart';

@lazySingleton
class SinglePlayerGameResponseEntityMapper
    implements
        EntityMapper<SinglePlayerGameResponse, SinglePlayerGameResponseModel> {
  final SinglePlayerGameStatusEntityMapper _gameStatusEntityMapper;
  final DifficultyLevelEntityMapper _difficultyLevelEntityMapper;
  final GameMarkEntityMapper _gameMarkEntityMapper;
  final GameMoveEntityMapper _gameMoveEntityMapper;

  SinglePlayerGameResponseEntityMapper(
    this._gameStatusEntityMapper,
    this._difficultyLevelEntityMapper,
    this._gameMarkEntityMapper,
    this._gameMoveEntityMapper,
  );

  @override
  SinglePlayerGameResponse toEntity(SinglePlayerGameResponseModel model) =>
      SinglePlayerGameResponse(
        gameId: model.gameId,
        status: _gameStatusEntityMapper.toEntity(model.status),
        difficultyLevel:
        _difficultyLevelEntityMapper.toEntity(model.difficultyLevel),
        playerMark: _gameMarkEntityMapper.toEntity(model.playerMark),
        computerMark: _gameMarkEntityMapper.toEntity(model.computerMark),
        moves: model.moves.map(_gameMoveEntityMapper.toEntity).toKtList(),
      );
}
