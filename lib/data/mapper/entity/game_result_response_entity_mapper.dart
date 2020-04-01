import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/difficilty_level_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_mark_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_status_entity_mapper.dart';
import 'package:tictactoe/data/model/game_result_response/content/game_result_response_model.dart';
import 'package:tictactoe/domain/entity/game_result_response/content/game_result_response.dart';

@lazySingleton
class GameResultResponseEntityMapper
    implements EntityMapper<GameResultResponse, GameResultResponseModel> {
  final GameStatusEntityMapper _gameStatusEntityMapper;
  final DifficultyLevelEntityMapper _difficultyLevelEntityMapper;
  final GameMarkEntityMapper _gameMarkEntityMapper;

  GameResultResponseEntityMapper(
    this._gameStatusEntityMapper,
    this._difficultyLevelEntityMapper,
    this._gameMarkEntityMapper,
  );

  @override
  GameResultResponse toEntity(GameResultResponseModel model) =>
      GameResultResponse(
        gameId: model.gameId,
        status: _gameStatusEntityMapper.toEntity(model.status),
        difficultyLevel:
            _difficultyLevelEntityMapper.toEntity(model.difficultyLevel),
        playerMark: _gameMarkEntityMapper.toEntity(model.playerMark),
        computerMark: _gameMarkEntityMapper.toEntity(model.computerMark),
        startDate: model.startDate,
        endDate: model.endDate,
      );
}
