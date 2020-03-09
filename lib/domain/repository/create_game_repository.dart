import 'package:tictactoe/domain/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/game_response/game_response.dart';

abstract class CreateGameRepository {
  Future<GameResponse> createGame(DifficultyLevel difficultyLevel);
}
