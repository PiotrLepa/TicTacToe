import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/domain/common/difficulty_level/difficulty_level.dart';

@lazySingleton
class DifficultyLevelEntityMapper
    implements EntityMapper<DifficultyLevel, DifficultyLevelModel> {
  @override
  DifficultyLevel toEntity(DifficultyLevelModel model) => model.map(
        easy: (_) => DifficultyLevel.easy(),
        medium: (_) => DifficultyLevel.medium(),
        hard: (_) => DifficultyLevel.hard(),
      );
}
