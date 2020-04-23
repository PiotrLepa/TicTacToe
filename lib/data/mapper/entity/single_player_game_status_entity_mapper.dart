import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/common/single_player_game_status/single_player_game_status_model.dart';
import 'package:tictactoe/domain/entity/common/game_status/game_status.dart';

@lazySingleton
class SinglePlayerGameStatusEntityMapper
    implements EntityMapper<GameStatus, SinglePlayerGameStatusModel> {
  @override
  // ignore: missing_return
  GameStatus toEntity(SinglePlayerGameStatusModel model) {
    switch (model) {
      case SinglePlayerGameStatusModel.ON_GOING:
        return GameStatus.onGoing;
      case SinglePlayerGameStatusModel.PLAYER_WON:
        return GameStatus.playerWon;
      case SinglePlayerGameStatusModel.COMPUTER_WON:
        return GameStatus.computerWon;
      case SinglePlayerGameStatusModel.DRAW:
        return GameStatus.draw;
    }
  }
}
