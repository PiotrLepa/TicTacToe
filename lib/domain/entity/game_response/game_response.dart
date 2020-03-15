library game_response;

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/domain/entity/common/game_status/game_status.dart';

part 'game_response.freezed.dart';

@freezed
abstract class GameResponse with _$GameResponse {
  const factory GameResponse({
    @required int gameId,
    @required GameStatus status,
    @required DifficultyLevel difficultyLevel,
    @required GameMark playerMark,
    @required GameMark computerMark,
    @required BuiltList<GameMove> moves,
  }) = _GameResponse;
}
