library game_response;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/core/network/serializer/serializable.dart';

part 'game_response.freezed.dart';
part 'game_response.g.dart';

@freezed
abstract class GameResponse extends Serializable with _$GameResponse {
  const factory GameResponse(
    int gameId,
    int startDate,
    int endDate,
  ) = _GameResponse;

  factory GameResponse.fromJson(Map<String, dynamic> json) =>
      _$GameResponseFromJson(json);
  static const fromJsonFactory = _$GameResponseFromJson;
}
