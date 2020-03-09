library difficulty_level_model;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'difficulty_level_model.freezed.dart';

part 'difficulty_level_model.g.dart';

@freezed
abstract class DifficultyLevelModel with _$DifficultyLevelModel {
  const factory DifficultyLevelModel.easy() = _Easy;

  const factory DifficultyLevelModel.medium() = _Medium;

  const factory DifficultyLevelModel.hard() = _Hard;

  factory DifficultyLevelModel.fromJson(Map<String, dynamic> json) =>
      _$DifficultyLevelModelFromJson(json);
  static const fromJsonFactory = _$DifficultyLevelModelFromJson;
}
