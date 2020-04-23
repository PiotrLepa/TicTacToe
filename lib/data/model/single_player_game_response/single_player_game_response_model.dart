library single_player_game_response_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/data/model/common/game_mark/game_mark_model.dart';
import 'package:tictactoe/data/model/common/game_move/game_move_model.dart';
import 'package:tictactoe/data/model/common/single_player_game_status/single_player_game_status_model.dart';

part 'single_player_game_response_model.freezed.dart';

part 'single_player_game_response_model.g.dart';

@freezed
abstract class SinglePlayerGameResponseModel
    with _$SinglePlayerGameResponseModel {
  const factory SinglePlayerGameResponseModel({
    @required int gameId,
    @required int playerId,
    @required SinglePlayerGameStatusModel status,
    @required DifficultyLevelModel difficultyLevel,
    @required GameMarkModel playerMark,
    @required GameMarkModel computerMark,
    @required List<GameMoveModel> moves,
  }) = _SinglePlayerGameResponseModel;

  factory SinglePlayerGameResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SinglePlayerGameResponseModelFromJson(json);

  static const fromJsonFactory = _$SinglePlayerGameResponseModelFromJson;
}
