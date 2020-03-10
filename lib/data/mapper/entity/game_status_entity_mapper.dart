import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/common/game_status/game_status_model.dart';
import 'package:tictactoe/domain/common/game_status/game_status.dart';

@lazySingleton
class GameStatusEntityMapper
    implements EntityMapper<GameStatus, GameStatusModel> {
  @override
  // ignore: missing_return
  GameStatus toEntity(GameStatusModel model) {
    switch (model) {
      case GameStatusModel.ON_GOING:
        return GameStatus.onGoing;
      case GameStatusModel.PLAYER_WON:
        return GameStatus.playerWon;
      case GameStatusModel.COMPUTER_WON:
        // TODO: Handle this case.
        return GameStatus.computerWon;
      case GameStatusModel.DRAW:
        return GameStatus.draw;
    }
  }
}
