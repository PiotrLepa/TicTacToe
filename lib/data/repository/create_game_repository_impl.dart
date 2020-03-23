import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/repository/network_repository.dart';
import 'package:tictactoe/data/mapper/entity/game_response_entity_mapper.dart';
import 'package:tictactoe/data/mapper/model/difficilty_level_model_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/game_response/game_response.dart';
import 'package:tictactoe/domain/repository/create_game_repository.dart';

@RegisterAs(CreateGameRepository)
@lazySingleton
class CreateGameRepositoryImpl extends NetworkRepository
    implements CreateGameRepository {
  final NetworkService _service;
  final DifficultyLevelModelMapper _difficultyLevelModelMapper;
  final GameResponseEntityMapper _gameResponseEntityMapper;

  CreateGameRepositoryImpl(
    this._service,
    this._difficultyLevelModelMapper,
    this._gameResponseEntityMapper,
  );

  @override
  Future<GameResponse> createGame(DifficultyLevel difficultyLevel) {
    final difficultyLevelModel =
        _difficultyLevelModelMapper.toModel(difficultyLevel);
    final request = _service.createGame(
      difficultyLevelModel,
    );
    return call(
      request: request,
      mapper: _gameResponseEntityMapper.toEntity,
    );
  }

  @override
  Future<GameResponse> setMove(int gameId, int fieldIndex) {
    return call(
      request: _service.setMove(gameId, fieldIndex),
      mapper: _gameResponseEntityMapper.toEntity,
    );
  }
}
