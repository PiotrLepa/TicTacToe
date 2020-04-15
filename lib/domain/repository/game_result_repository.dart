import 'package:tictactoe/domain/entity/game_result_response/game_result_paged_response.dart';

abstract class GameResultRepository {
  Future<GameResultPagedResponse> getUserGameResults(int page);

  Future<GameResultPagedResponse> getAllGameResults(int page);
}
