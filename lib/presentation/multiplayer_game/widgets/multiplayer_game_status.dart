import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_game_status/multiplayer_game_status.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_player_type/multiplayer_player_type.dart';

class GameStatus extends StatelessWidget {
  final MultiplayerPlayerType player;
  final MultiplayerPlayerType currentTurn;
  final MultiplayerGameStatus gameStatus;

  const GameStatus({
    Key key,
    @required this.player,
    @required this.currentTurn,
    @required this.gameStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _getTextForStatus(context),
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  String _getTextForStatus(BuildContext context) {
    switch (gameStatus) {
      case MultiplayerGameStatus.created:
        return context.translateKey('multiplayerGameStatusWaitingForOpponent');
      case MultiplayerGameStatus.onGoing:
        return _getTextForCurrentTurn(context);
      case MultiplayerGameStatus.firstPlayerWon:
        return _getGameEndText(context);
      case MultiplayerGameStatus.secondPlayerWon:
        return _getGameEndText(context);
      case MultiplayerGameStatus.draw:
        return _getGameEndText(context);
      case MultiplayerGameStatus.playerLeftGame:
        return context.translateKey('multiplayerGameStatusOpponentLeftGame');
    }
  }

  String _getTextForCurrentTurn(BuildContext context) {
    if (player == currentTurn) {
      return context.translateKey('multiplayerGameStatusYourTurn');
    } else {
      return context.translateKey('multiplayerGameStatusOpponentTurn');
    }
  }

  String _getGameEndText(BuildContext context) {
    switch (gameStatus) {
      case MultiplayerGameStatus.created:
      case MultiplayerGameStatus.onGoing:
      case MultiplayerGameStatus.playerLeftGame:
        break;
      case MultiplayerGameStatus.firstPlayerWon:
        return _getGameEndTextForPlayer(
            context, MultiplayerPlayerType.firstPlayer);
      case MultiplayerGameStatus.secondPlayerWon:
        return _getGameEndTextForPlayer(
            context, MultiplayerPlayerType.secondPlayer);
      case MultiplayerGameStatus.draw:
        return context.translateKey('gameScreenStatusDraw');
    }
  }

  String _getGameEndTextForPlayer(
    BuildContext context,
    MultiplayerPlayerType playerToCheck,
  ) {
    if (player == playerToCheck) {
      return context.translateKey('gameScreenStatusWon');
    } else {
      return context.translateKey('gameScreenStatusLost');
    }
  }
}
