import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/model_mapper.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/domain/common/difficulty_level/difficulty_level.dart';

@lazySingleton
class DifficultyLevelModelMapper
    implements ModelMapper<DifficultyLevelModel, DifficultyLevel> {
  @override
  DifficultyLevelModel toModel(DifficultyLevel entity) =>
      DifficultyLevelModel.values[entity.index];
}
