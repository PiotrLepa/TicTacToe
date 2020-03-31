import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/data/network/network_error_handler.dart';
import 'package:tictactoe/data/mapper/entity/game_result_response_entity_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/domain/entity/game_result_response/game_result_response.dart';
import 'package:tictactoe/domain/repository/game_result_repository.dart';

@RegisterAs(GameResultRepository)
@lazySingleton
class GameResultRepositoryImpl implements GameResultRepository {
  final NetworkService _service;
  final GameResultResponseEntityMapper _gameResultResponseEntityMapper;

  GameResultRepositoryImpl(
    this._service,
    this._gameResultResponseEntityMapper,
  );

  @override
  Future<KtList<GameResultResponse>> getUserGameResults() => _service
      .getAllGameResults()
      .then((list) => list.map(_gameResultResponseEntityMapper.toEntity))
      .handleNetworkError();

  @override
  Future<KtList<GameResultResponse>> getAllGameResults() => _service
      .getAllGameResults() // TODO change service
      .then((list) => list.map(_gameResultResponseEntityMapper.toEntity))
      .handleNetworkError();
}
