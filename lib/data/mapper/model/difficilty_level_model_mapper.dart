import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/model_mapper.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';

@lazySingleton
class DifficultyLevelModelMapper
    implements ModelMapper<DifficultyLevelModel, DifficultyLevel> {
  @override
  // ignore: missing_return
  DifficultyLevelModel toModel(DifficultyLevel entity) {
    switch (entity) {
      case DifficultyLevel.easy:
        return DifficultyLevelModel.EASY;
      case DifficultyLevel.medium:
        return DifficultyLevelModel.MEDIUM;
      case DifficultyLevel.hard:
        return DifficultyLevelModel.HARD;
    }
  }
}
