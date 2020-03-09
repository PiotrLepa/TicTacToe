library game_status_model;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_status_model.freezed.dart';

part 'game_status_model.g.dart';

@freezed
abstract class GameStatusModel with _$GameStatusModel {
  const factory GameStatusModel.onGoing() = _OnGoing;

  const factory GameStatusModel.playerWon() = _PlayerWon;

  const factory GameStatusModel.computerWon() = _ComputerWon;

  const factory GameStatusModel.draw() = _Draw;

  factory GameStatusModel.fromJson(Map<String, dynamic> json) =>
      _$GameStatusModelFromJson(json);
  static const fromJsonFactory = _$GameStatusModelFromJson;
}
