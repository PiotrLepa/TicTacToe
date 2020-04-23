import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/single_player_game_response/single_player_game_response.dart';

abstract class SinglePlayerGameRepository {
  Future<SinglePlayerGameResponse> createGame(DifficultyLevel difficultyLevel);

  Future<SinglePlayerGameResponse> setMove(int gameId, int fieldIndex);
}
