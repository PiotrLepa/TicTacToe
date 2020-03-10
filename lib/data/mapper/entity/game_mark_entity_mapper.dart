import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/common/game_mark/game_mark_model.dart';
import 'package:tictactoe/domain/common/game_mark/game_mark.dart';

@lazySingleton
class GameMarkEntityMapper implements EntityMapper<GameMark, GameMarkModel> {
  @override
  // ignore: missing_return
  GameMark toEntity(GameMarkModel model) {
    switch (model) {
      case GameMarkModel.X:
        return GameMark.x;
      case GameMarkModel.O:
        return GameMark.o;
    }
  }
}
