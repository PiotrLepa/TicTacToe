import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_status/game_status.dart';

part 'single_player_game_result_response.freezed.dart';

@freezed
class SinglePlayerGameResultResponse with _$SinglePlayerGameResultResponse {
  const factory SinglePlayerGameResultResponse({
    required int gameId,
    required GameStatus status,
    required DifficultyLevel difficultyLevel,
    required GameMark playerMark,
    required GameMark computerMark,
    required String startDate,
    required String endDate,
  }) = _SinglePlayerGameResultResponse;
}
