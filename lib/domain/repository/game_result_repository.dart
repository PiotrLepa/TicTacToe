import 'package:tictactoe/domain/entity/single_player_game_result_response/single_player_game_result_paged_response.dart';

abstract class GameResultRepository {
  Future<SinglePlayerGameResultPagedResponse> getUserGameResults(int page);

  Future<SinglePlayerGameResultPagedResponse> getAllGameResults(int page);
}
