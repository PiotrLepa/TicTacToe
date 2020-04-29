library multiplayer_game_response;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_game_status/multiplayer_game_status.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_player_type/multiplayer_player_type.dart';

part 'multiplayer_game_response.freezed.dart';

@freezed
abstract class MultiplayerGameResponse with _$MultiplayerGameResponse {
  const factory MultiplayerGameResponse({
    @required int gameId,
    @required MultiplayerGameStatus status,
    @required MultiplayerPlayerType currentTurn,
    @required KtList<GameMove> moves,
  }) = _MultiplayerGameResponse;
}
