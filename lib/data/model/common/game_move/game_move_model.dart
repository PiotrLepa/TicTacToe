library game_move_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/data/model/common/game_mark/game_mark_model.dart';

part 'game_move_model.freezed.dart';
part 'game_move_model.g.dart';

@freezed
abstract class GameMoveModel with _$GameMoveModel {
  const factory GameMoveModel({
    required int moveId,
    required int fieldIndex,
    required int counter,
    required GameMarkModel mark,
  }) = _GameMoveModel;

  factory GameMoveModel.fromJson(Map<String, dynamic> json) =>
      _$GameMoveModelFromJson(json);

  static const fromJsonFactory = _$GameMoveModelFromJson;
}
