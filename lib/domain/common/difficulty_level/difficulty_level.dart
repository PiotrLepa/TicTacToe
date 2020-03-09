library difficulty_level;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'difficulty_level.freezed.dart';

@freezed
abstract class DifficultyLevel with _$DifficultyLevel {
  const factory DifficultyLevel.easy() = _Easy;

  const factory DifficultyLevel.medium() = _Medium;

  const factory DifficultyLevel.hard() = _Hard;
}
