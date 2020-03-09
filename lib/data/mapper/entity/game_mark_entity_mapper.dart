import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/common/game_mark/game_mark_model.dart';
import 'package:tictactoe/domain/common/game_mark/game_mark.dart';

@lazySingleton
class GameMarkEntityMapper implements EntityMapper<GameMark, GameMarkModel> {
  @override
  GameMark toEntity(GameMarkModel model) => model.map(
        x: (_) => GameMark.x(),
        o: (_) => GameMark.o(),
      );
}
