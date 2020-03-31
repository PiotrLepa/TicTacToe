library game_result_response_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/data/model/common/game_mark/game_mark_model.dart';
import 'package:tictactoe/data/model/common/game_status/game_status_model.dart';

part 'game_result_response_model.freezed.dart';

part 'game_result_response_model.g.dart';

@freezed
abstract class GameResultResponseModel with _$GameResultResponseModel {
  const factory GameResultResponseModel({
    @required int gameId,
    @required int playerId,
    @required GameStatusModel status,
    @required DifficultyLevelModel difficultyLevel,
    @required GameMarkModel playerMark,
    @required GameMarkModel computerMark,
    @required int startDate,
    @required int endDate,
  }) = _GameResultResponseModel;

  factory GameResultResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GameResultResponseModelFromJson(json);

  static const fromJsonFactory = _$GameResultResponseModelFromJson;
}
