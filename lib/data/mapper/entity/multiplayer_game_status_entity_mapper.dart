import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/common/multiplayer_game_status/multiplayer_game_status_model.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_game_status/multiplayer_game_status.dart';

@lazySingleton
class MultiplayerGameStatusEntityMapper
    implements EntityMapper<MultiplayerGameStatus, MultiplayerGameStatusModel> {
  @override
  // ignore: missing_return
  MultiplayerGameStatus toEntity(MultiplayerGameStatusModel model) {
    switch (model) {
      case MultiplayerGameStatusModel.CREATED:
        return MultiplayerGameStatus.created;
      case MultiplayerGameStatusModel.ON_GOING:
        return MultiplayerGameStatus.onGoing;
      case MultiplayerGameStatusModel.FIRST_PLAYER_WON:
        return MultiplayerGameStatus.firstPlayerWon;
      case MultiplayerGameStatusModel.SECOND_PLAYER_WON:
        return MultiplayerGameStatus.secondPlayerWon;
      case MultiplayerGameStatusModel.DRAW:
        return MultiplayerGameStatus.draw;
      case MultiplayerGameStatusModel.PLAYER_LEFT_GAME:
        return MultiplayerGameStatus.playerLeftGame;
    }
  }
}
