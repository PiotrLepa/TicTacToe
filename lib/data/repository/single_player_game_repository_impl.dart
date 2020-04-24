import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_error_handler.dart';
import 'package:tictactoe/data/mapper/entity/single_player_game_response_entity_mapper.dart';
import 'package:tictactoe/data/mapper/model/difficilty_level_model_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/single_player_game_response/single_player_game_response.dart';
import 'package:tictactoe/domain/repository/single_player_game_repository.dart';

@RegisterAs(SinglePlayerGameRepository)
@lazySingleton
class SinglePlayerGameRepositoryImpl implements SinglePlayerGameRepository {
  final NetworkService _service;
  final DifficultyLevelModelMapper _difficultyLevelModelMapper;
  final SinglePlayerGameResponseEntityMapper _gameResponseEntityMapper;

  SinglePlayerGameRepositoryImpl(
    this._service,
    this._difficultyLevelModelMapper,
    this._gameResponseEntityMapper,
  );

  @override
  Future<SinglePlayerGameResponse> createGame(
          DifficultyLevel difficultyLevel) =>
      _service
          .singlePlayerCreateGame(
              _difficultyLevelModelMapper.toModel(difficultyLevel))
          .then(_gameResponseEntityMapper.toEntity)
          .handleNetworkError();

  @override
  Future<SinglePlayerGameResponse> setMove(int gameId, int fieldIndex) =>
      _service
          .singlePlayerSetMove(gameId, fieldIndex)
          .then(_gameResponseEntityMapper.toEntity)
          .handleNetworkError();
}
