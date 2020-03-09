library game_mark_model;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_mark_model.freezed.dart';

part 'game_mark_model.g.dart';

@freezed
abstract class GameMarkModel with _$GameMarkModel {
  const factory GameMarkModel.x() = _X;

  const factory GameMarkModel.o() = _o;

  factory GameMarkModel.fromJson(Map<String, dynamic> json) =>
      _$GameMarkModelFromJson(json);
  static const fromJsonFactory = _$GameMarkModelFromJson;
}
