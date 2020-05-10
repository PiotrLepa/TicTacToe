import 'package:tictactoe/domain/entity/multiplayer_game_created_response/multiplayer_game_created_response.dart';
import 'package:tictactoe/domain/entity/multiplayer_game_response/multiplayer_game_response.dart';

abstract class MultiplayerGameRepository {
  Future<MultiplayerGameCreatedResponse> createGame(String opponentCode);

  Future<void> joinToGame(int gameId);

  Future<void> setMove(int gameId, int fieldIndex);

  Stream<MultiplayerGameResponse> getGameData(String socketDestination);

  Future<void> restart(int gameId);
}
