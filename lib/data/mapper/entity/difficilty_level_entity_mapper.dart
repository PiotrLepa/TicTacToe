import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';

@lazySingleton
class DifficultyLevelEntityMapper
    implements EntityMapper<DifficultyLevel, DifficultyLevelModel> {
  @override
  // ignore: missing_return
  DifficultyLevel toEntity(DifficultyLevelModel model) {
    switch (model) {
      case DifficultyLevelModel.EASY:
        return DifficultyLevel.easy;
      case DifficultyLevelModel.MEDIUM:
        return DifficultyLevel.medium;
      case DifficultyLevelModel.HARD:
        return DifficultyLevel.hard;
    }
  }
}
