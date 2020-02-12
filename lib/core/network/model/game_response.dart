library game_response;

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tictactoe/core/network/serializer/serializable.dart';

part 'game_response.freezed.dart';

part 'game_response.g.dart';

@immutable
abstract class GameResponse extends Serializable with _$GameResponse {
  const factory GameResponse(
    int gameId,
    int startDate,
    int endData,
  ) = _GameResponse;

  factory GameResponse.fromJson(Map<String, dynamic> json) =>
      _$GameResponseFromJson(json);
  static const fromJsonFactory = _$GameResponseFromJson;
}
