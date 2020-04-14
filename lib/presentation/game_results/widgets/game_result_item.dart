import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/domain/entity/game_result_response/content/game_result_response.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_result_item_winner.dart';

class GameResultItem extends StatelessWidget {
  final GameResultResponse data;

  const GameResultItem({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: <Widget>[
          GameResultItemWinner(
            gameStatus: data.status,
          ),
        ],
      ),
    );
  }
}
