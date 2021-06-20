import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/domain/bloc/multiplayer_game/entity/multiplayer_game_combined_status.dart';

class GameStatus extends StatelessWidget {
  final MultiplayerGameCombinedStatus status;

  const GameStatus({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _getTextForStatus(context),
      textAlign: TextAlign.center,
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
        return context
            .translate(Strings.multiplayerGameStatusWaitingForOpponent);
      case MultiplayerGameCombinedStatus.yourTurn:
        return context.translate(Strings.multiplayerGameStatusYourTurn);
      case MultiplayerGameCombinedStatus.opponentTurn:
        return context.translate(Strings.multiplayerGameStatusOpponentTurn);
      case MultiplayerGameCombinedStatus.won:
        return context.translate(Strings.gameScreenStatusWon);
      case MultiplayerGameCombinedStatus.lost:
        return context.translate(Strings.gameScreenStatusLost);
      case MultiplayerGameCombinedStatus.draw:
        return context.translate(Strings.gameScreenStatusDraw);
      case MultiplayerGameCombinedStatus.opponentLeftGame:
        return context.translate(Strings.multiplayerGameStatusOpponentLeftGame);
    }
  }
}
