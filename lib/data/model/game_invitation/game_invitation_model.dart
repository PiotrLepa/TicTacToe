library game_invitation_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/common/game_mark/game_mark_model.dart';
import 'package:tictactoe/data/model/common/multiplayer_player_type/multiplayer_player_type_model.dart';

part 'game_invitation_model.freezed.dart';
part 'game_invitation_model.g.dart';

@freezed
abstract class GameInvitationModel with _$GameInvitationModel {
  const factory GameInvitationModel({
    @required String gameId,
    @required GameMarkModel yourMark,
    @required MultiplayerPlayerTypeModel playerType,
    @required String body,
  }) = _GameInvitationModel;

  factory GameInvitationModel.fromJson(Map<String, dynamic> json) =>
      _$GameInvitationModelFromJson(json);

  static const fromJsonFactory = _$GameInvitationModelFromJson;
}
