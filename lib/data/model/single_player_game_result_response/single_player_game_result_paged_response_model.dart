library single_player_game_result_paged_response_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/single_player_game_result_response/content/single_player_game_result_response_model.dart';

part 'single_player_game_result_paged_response_model.freezed.dart';

part 'single_player_game_result_paged_response_model.g.dart';

@freezed
abstract class SinglePlayerGameResultPagedResponseModel
    with _$SinglePlayerGameResultPagedResponseModel {
  const factory SinglePlayerGameResultPagedResponseModel({
    @required List<SinglePlayerGameResultResponseModel> content,
    @required int number,
    @required bool last,
  }) = _SinglePlayerGameResultPagedResponseModel;

  factory SinglePlayerGameResultPagedResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$SinglePlayerGameResultPagedResponseModelFromJson(json);

  static const fromJsonFactory =
      _$SinglePlayerGameResultPagedResponseModelFromJson;
}
