import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_player_type/multiplayer_player_type.dart';

part 'multiplayer_game_created_response.freezed.dart';

@freezed
class MultiplayerGameCreatedResponse with _$MultiplayerGameCreatedResponse {
  const factory MultiplayerGameCreatedResponse({
    required int gameId,
    required String socketDestination,
    required GameMark yourMark,
    required MultiplayerPlayerType playerType,
  }) = _MultiplayerGameCreatedResponse;
}
