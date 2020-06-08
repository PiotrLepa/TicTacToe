library game_invitation;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_player_type/multiplayer_player_type.dart';

part 'game_invitation.freezed.dart';

@freezed
abstract class GameInvitation with _$GameInvitation {
  const factory GameInvitation({
    @required int gameId,
    @required String socketDestination,
    @required GameMark yourMark,
    @required MultiplayerPlayerType playerType,
    @required String body,
  }) = _GameInvitation;
}
