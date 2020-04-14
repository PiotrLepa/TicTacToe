import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/domain/entity/common/game_status/game_status.dart';

class GameResultItemWinner extends StatelessWidget {
  final GameStatus gameStatus;

  const GameResultItemWinner({
    Key key,
    @required this.gameStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          context.translateKey('gameResultsWinnerLabel'),
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Text(
          _mapGameStatusToString(context),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }

  String _mapGameStatusToString(BuildContext context) {
    switch (gameStatus) {
      case GameStatus.onGoing:
        throw Exception('On going game in game results');
      case GameStatus.playerWon:
        return context.translateKey('gameResultsWinnerPlayer');
      case GameStatus.computerWon:
        return context.translateKey('gameResultsWinnerComputer');
      case GameStatus.draw:
        return context.translateKey('gameResultsWinnerDraw');
    }
  }
}
