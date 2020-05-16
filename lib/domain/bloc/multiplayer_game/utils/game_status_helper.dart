import 'package:injectable/injectable.dart';
import 'package:tictactoe/domain/bloc/multiplayer_game/entity/multiplayer_game_combined_status.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_game_status/multiplayer_game_status.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_player_type/multiplayer_player_type.dart';

@lazySingleton
class GameStatusCombiner {
  MultiplayerGameCombinedStatus getCombinedStatus(
    MultiplayerPlayerType player,
    MultiplayerGameStatus status,
    MultiplayerPlayerType currentTurn,
  ) {
    switch (status) {
      case MultiplayerGameStatus.created:
        return MultiplayerGameCombinedStatus.waitingForOpponentToConnect;
      case MultiplayerGameStatus.onGoing:
        return _getCurrentTurn(player, currentTurn);
      case MultiplayerGameStatus.firstPlayerWon:
        return _getGameEndTextForPlayer(
          player,
          MultiplayerPlayerType.firstPlayer,
        );
      case MultiplayerGameStatus.secondPlayerWon:
        return _getGameEndTextForPlayer(
          player,
          MultiplayerPlayerType.secondPlayer,
        );
      case MultiplayerGameStatus.draw:
        return MultiplayerGameCombinedStatus.draw;
      case MultiplayerGameStatus.playerLeftGame:
        return MultiplayerGameCombinedStatus.opponentLeftGame;
    }
  }

  MultiplayerGameCombinedStatus _getCurrentTurn(
    MultiplayerPlayerType player,
    MultiplayerPlayerType currentTurn,
  ) {
    if (player == currentTurn) {
      return MultiplayerGameCombinedStatus.yourTurn;
    } else {
      return MultiplayerGameCombinedStatus.opponentTurn;
    }
  }

  MultiplayerGameCombinedStatus _getGameEndTextForPlayer(
    MultiplayerPlayerType player,
    MultiplayerPlayerType playerToCheck,
  ) {
    if (player == playerToCheck) {
      return MultiplayerGameCombinedStatus.won;
    } else {
      return MultiplayerGameCombinedStatus.lost;
    }
  }
}
