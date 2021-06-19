import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/common/game_mark/game_mark_model.dart';
import 'package:tictactoe/data/model/common/multiplayer_player_type/multiplayer_player_type_model.dart';

part 'multiplayer_game_created_response_model.freezed.dart';
part 'multiplayer_game_created_response_model.g.dart';

@freezed
class MultiplayerGameCreatedResponseModel
    with _$MultiplayerGameCreatedResponseModel {
  const factory MultiplayerGameCreatedResponseModel({
    required int gameId,
    required String socketDestination,
    required GameMarkModel yourMark,
    required MultiplayerPlayerTypeModel playerType,
  }) = _MultiplayerGameCreatedResponseModel;

  factory MultiplayerGameCreatedResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MultiplayerGameCreatedResponseModelFromJson(json);

  static const fromJsonFactory = _$MultiplayerGameCreatedResponseModelFromJson;
}
