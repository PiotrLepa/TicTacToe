library game_result_paged_response_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/game_result_response/content/game_result_response_model.dart';

part 'game_result_paged_response_model.freezed.dart';

part 'game_result_paged_response_model.g.dart';

@freezed
abstract class GameResultPagedResponseModel
    with _$GameResultPagedResponseModel {
  const factory GameResultPagedResponseModel({
    @required List<GameResultResponseModel> content,
    @required int number,
    @required bool last,
  }) = _GameResultPagedResponseModel;

  factory GameResultPagedResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GameResultPagedResponseModelFromJson(json);

  static const fromJsonFactory = _$GameResultPagedResponseModelFromJson;
}
