abstract class MultiplayerGameRepository {
  Future<void> createGame(String opponentCode);

  Future<void> joinToGame(int gameId);

  Future<void> setMove(int gameId, int fieldIndex);
}
