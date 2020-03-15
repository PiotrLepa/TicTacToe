import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_mark_entity_mapper.dart';
import 'package:tictactoe/data/model/common/game_move/game_move_model.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';

@lazySingleton
class GameMoveEntityMapper implements EntityMapper<GameMove, GameMoveModel> {
  final GameMarkEntityMapper _gameMarkEntityMapper;

  GameMoveEntityMapper(this._gameMarkEntityMapper);

  @override
  GameMove toEntity(GameMoveModel model) => GameMove(
        moveId: model.moveId,
        fieldIndex: model.fieldIndex,
        counter: model.counter,
        mark: _gameMarkEntityMapper.toEntity(model.mark),
      );
}
