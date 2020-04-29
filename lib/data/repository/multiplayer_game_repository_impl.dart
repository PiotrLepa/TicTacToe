import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_error_handler.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/domain/repository/multiplayer_game_repository.dart';

@RegisterAs(MultiplayerGameRepository)
@lazySingleton
class MultiplayerGameRepositoryImpl implements MultiplayerGameRepository {
  final NetworkService _service;

  MultiplayerGameRepositoryImpl(
    this._service,
  );

  @override
  Future<void> createGame(String opponentCode) =>
      _service.multiplayerCreateGame(opponentCode).handleNetworkError();

  @override
  Future<void> joinToGame(int gameId) =>
      _service.multiplayerJoinToGame(gameId).handleNetworkError();

  @override
  Future<void> setMove(int gameId, int fieldIndex) =>
      _service.multiplayerSetMove(gameId, fieldIndex).handleNetworkError();
}
