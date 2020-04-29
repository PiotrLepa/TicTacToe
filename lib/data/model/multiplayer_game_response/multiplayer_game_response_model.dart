library multiplayer_game_response_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/common/game_move/game_move_model.dart';
import 'package:tictactoe/data/model/common/multiplayer_game_status/multiplayer_game_status_model.dart';
import 'package:tictactoe/data/model/common/multiplayer_player_type/multiplayer_player_type_model.dart';

part 'multiplayer_game_response_model.freezed.dart';

part 'multiplayer_game_response_model.g.dart';

@freezed
abstract class MultiplayerGameResponseModel
    with _$MultiplayerGameResponseModel {
  const factory MultiplayerGameResponseModel({
    @required int gameId,
    @required MultiplayerGameStatusModel status,
    @required MultiplayerPlayerTypeModel currentTurn,
    @required List<GameMoveModel> moves,
  }) = _MultiplayerGameResponseModel;

  factory MultiplayerGameResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MultiplayerGameResponseModelFromJson(json);

  static const fromJsonFactory = _$MultiplayerGameResponseModelFromJson;
}
