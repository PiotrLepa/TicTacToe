import 'package:kt_dart/collection.dart';
import 'package:tictactoe/domain/entity/game_result_response/game_result_response.dart';

abstract class GameResultRepository {
  Future<KtList<GameResultResponse>> getUserGameResults();

  Future<KtList<GameResultResponse>> getAllGameResults();
}
