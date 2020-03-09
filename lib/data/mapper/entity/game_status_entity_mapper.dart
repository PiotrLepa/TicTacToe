import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/common/game_status/game_status_model.dart';
import 'package:tictactoe/domain/common/game_status/game_status.dart';

@lazySingleton
class GameStatusEntityMapper
    implements EntityMapper<GameStatus, GameStatusModel> {
  @override
  GameStatus toEntity(GameStatusModel model) => model.map(
        onGoing: (_) => GameStatus.onGoing(),
        playerWon: (_) => GameStatus.playerWon(),
        computerWon: (_) => GameStatus.computerWon(),
        draw: (_) => GameStatus.draw(),
      );
}
