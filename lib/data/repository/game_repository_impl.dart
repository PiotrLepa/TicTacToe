import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_error_handler.dart';
import 'package:tictactoe/data/mapper/entity/game_response_entity_mapper.dart';
import 'package:tictactoe/data/mapper/model/difficilty_level_model_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/game_response/game_response.dart';
import 'package:tictactoe/domain/repository/game_repository.dart';

@RegisterAs(GameRepository)
@lazySingleton
class GameRepositoryImpl implements GameRepository {
  final NetworkService _service;
  final DifficultyLevelModelMapper _difficultyLevelModelMapper;
  final GameResponseEntityMapper _gameResponseEntityMapper;

  GameRepositoryImpl(
    this._service,
    this._difficultyLevelModelMapper,
    this._gameResponseEntityMapper,
  );

  @override
  Future<GameResponse> createGame(DifficultyLevel difficultyLevel) => _service
      .createGame(_difficultyLevelModelMapper.toModel(difficultyLevel))
      .then(_gameResponseEntityMapper.toEntity)
      .handleNetworkError();

  @override
  Future<GameResponse> setMove(int gameId, int fieldIndex) =>
      _service
          .setMove(gameId, fieldIndex)
          .then(_gameResponseEntityMapper.toEntity)
          .handleNetworkError();
}
