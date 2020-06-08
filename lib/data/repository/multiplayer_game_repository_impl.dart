import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_error_handler.dart';
import 'package:tictactoe/data/mapper/entity/multiplayer_game_created_response_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/multiplayer_game_response_entity_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/data/service/stomp_service.dart';
import 'package:tictactoe/domain/entity/multiplayer_game_created_response/multiplayer_game_created_response.dart';
import 'package:tictactoe/domain/entity/multiplayer_game_response/multiplayer_game_response.dart';
import 'package:tictactoe/domain/repository/multiplayer_game_repository.dart';

@RegisterAs(MultiplayerGameRepository)
@lazySingleton
class MultiplayerGameRepositoryImpl implements MultiplayerGameRepository {
  final NetworkService _networkService;
  final StompService _stompService;
  final MultiplayerGameCreatedResponseEntityMapper _gameCreatedEntityMapper;
  final MultiplayerGameResponseEntityMapper _gameEntityMapper;

  MultiplayerGameRepositoryImpl(
    this._networkService,
    this._stompService,
    this._gameCreatedEntityMapper,
    this._gameEntityMapper,
  );

  @override
  Future<MultiplayerGameCreatedResponse> createGame(String opponentCode) =>
      _networkService
          .multiplayerCreateGame(opponentCode)
          .then(_gameCreatedEntityMapper.toEntity)
          .handleNetworkError();

  @override
  Future<void> joinToGame(int gameId) =>
      _networkService.multiplayerJoinToGame(gameId).handleNetworkError();

  @override
  Future<void> setMove(int gameId, int fieldIndex) => _networkService
      .multiplayerSetMove(gameId, fieldIndex)
      .handleNetworkError();

  @override
  Stream<MultiplayerGameResponse> getGameData(String socketDestination) =>
      _stompService
          .getMultiplayerGame(socketDestination)
          .map(_gameEntityMapper.toEntity);

  @override
  Future<MultiplayerGameResponse> restart(int gameId) => _networkService
      .multiplayerRestartGame(gameId)
      .then(_gameEntityMapper.toEntity)
      .handleNetworkError();
}
