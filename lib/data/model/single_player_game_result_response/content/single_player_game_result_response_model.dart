import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/data/model/common/game_mark/game_mark_model.dart';
import 'package:tictactoe/data/model/common/single_player_game_status/single_player_game_status_model.dart';

part 'single_player_game_result_response_model.freezed.dart';
part 'single_player_game_result_response_model.g.dart';

@freezed
class SinglePlayerGameResultResponseModel
    with _$SinglePlayerGameResultResponseModel {
  const factory SinglePlayerGameResultResponseModel({
    required int gameId,
    required int playerId,
    required SinglePlayerGameStatusModel status,
    required DifficultyLevelModel difficultyLevel,
    required GameMarkModel playerMark,
    required GameMarkModel computerMark,
    required String startDate,
    required String endDate,
  }) = _SinglePlayerGameResultResponseModel;

  factory SinglePlayerGameResultResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$SinglePlayerGameResultResponseModelFromJson(json);

  static const fromJsonFactory = _$SinglePlayerGameResultResponseModelFromJson;
}
