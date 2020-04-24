import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_error_handler.dart';
import 'package:tictactoe/data/mapper/entity/single_player_game_result_paged_response_entity_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/domain/entity/single_player_game_result_response/single_player_game_result_paged_response.dart';
import 'package:tictactoe/domain/repository/game_result_repository.dart';

@RegisterAs(GameResultRepository)
@lazySingleton
class GameResultRepositoryImpl implements GameResultRepository {
  final NetworkService _service;
  final SinglePlayerGameResultPagedResponseEntityMapper
      _gameResultResponsePagedEntityMapper;

  GameResultRepositoryImpl(
    this._service,
    this._gameResultResponsePagedEntityMapper,
  );

  @override
  Future<SinglePlayerGameResultPagedResponse> getUserGameResults(int page) =>
      _service
          .getUserGameResults(page)
          .then(_gameResultResponsePagedEntityMapper.toEntity)
          .handleNetworkError();

  @override
  Future<SinglePlayerGameResultPagedResponse> getAllGameResults(int page) =>
      _service
          .getAllGameResults(page)
          .then(_gameResultResponsePagedEntityMapper.toEntity)
          .handleNetworkError();
}
