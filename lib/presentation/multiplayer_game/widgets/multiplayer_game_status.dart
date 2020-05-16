import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/domain/bloc/multiplayer_game/entity/multiplayer_game_combined_status.dart';

class GameStatus extends StatelessWidget {
  final MultiplayerGameCombinedStatus status;

  const GameStatus({
    Key key,
    @required this.status,
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

  // ignore: missing_return
  String _getTextForStatus(BuildContext context) {
    switch (status) {
      case MultiplayerGameCombinedStatus.waitingForOpponentToConnect:
        return context.translateKey('multiplayerGameStatusWaitingForOpponent');
      case MultiplayerGameCombinedStatus.yourTurn:
        return context.translateKey('multiplayerGameStatusYourTurn');
      case MultiplayerGameCombinedStatus.opponentTurn:
        return context.translateKey('multiplayerGameStatusOpponentTurn');
      case MultiplayerGameCombinedStatus.won:
        return context.translateKey('gameScreenStatusWon');
      case MultiplayerGameCombinedStatus.lost:
        return context.translateKey('gameScreenStatusLost');
      case MultiplayerGameCombinedStatus.draw:
        return context.translateKey('gameScreenStatusDraw');
      case MultiplayerGameCombinedStatus.opponentLeftGame:
        return context.translateKey('multiplayerGameStatusOpponentLeftGame');
    }
  }
}
