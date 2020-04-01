library game_result_response;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_status/game_status.dart';

part 'game_result_response.freezed.dart';

@freezed
abstract class GameResultResponse with _$GameResultResponse {
  const factory GameResultResponse({
    @required int gameId,
    @required GameStatus status,
    @required DifficultyLevel difficultyLevel,
    @required GameMark playerMark,
    @required GameMark computerMark,
    @required int startDate,
    @required int endDate,
  }) = _GameResultResponse;
}
