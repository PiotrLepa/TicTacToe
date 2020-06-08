library single_player_game_response;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/domain/entity/common/game_status/game_status.dart';

part 'single_player_game_response.freezed.dart';

@freezed
abstract class SinglePlayerGameResponse with _$SinglePlayerGameResponse {
  const factory SinglePlayerGameResponse({
    @required int gameId,
    @required GameStatus status,
    @required DifficultyLevel difficultyLevel,
    @required GameMark playerMark,
    @required GameMark computerMark,
    @required KtList<GameMove> moves,
  }) = _SinglePlayerGameResponse;
}
