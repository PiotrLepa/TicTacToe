library game_response_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/data/model/common/game_mark/game_mark_model.dart';
import 'package:tictactoe/data/model/common/game_move/game_move_model.dart';
import 'package:tictactoe/data/model/common/game_status/game_status_model.dart';

part 'game_response_model.freezed.dart';
part 'game_response_model.g.dart';

@freezed
abstract class GameResponseModel with _$GameResponseModel {
  const factory GameResponseModel({
    @required int gameId,
    @required int playerId,
    @required GameStatusModel status,
    @required DifficultyLevelModel difficultyLevel,
    @required GameMarkModel playerMark,
    @required GameMarkModel computerMark,
    @required List<GameMoveModel> moves,
  }) = _GameResponseModel;

  factory GameResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GameResponseModelFromJson(json);
  static const fromJsonFactory = _$GameResponseModelFromJson;
}
