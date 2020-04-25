library game_request_notification_data;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/common/game_mark/game_mark_model.dart';
import 'package:tictactoe/data/model/common/multiplayer_player_type/multiplayer_player_type_model.dart';

part 'game_request_notification_data.freezed.dart';

part 'game_request_notification_data.g.dart';

@freezed
abstract class GameRequestNotificationData with _$GameRequestNotificationData {
  const factory GameRequestNotificationData({
    @required int gameId,
    @required GameMarkModel yourMark,
    @required MultiplayerPlayerTypeModel playerType,
  }) = _GameRequestData;

  factory GameRequestNotificationData.fromJson(Map<String, dynamic> json) =>
      _$GameRequestNotificationDataFromJson(json);

  static const fromJsonFactory = _$GameRequestNotificationDataFromJson;
}
