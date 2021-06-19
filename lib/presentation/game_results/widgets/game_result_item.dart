import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/domain/entity/single_player_game_result_response/content/single_player_game_result_response.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_result_item_date.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_result_item_winner.dart';

class GameResultItem extends StatelessWidget {
  final SinglePlayerGameResultResponse data;

  const GameResultItem({
    Key? key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.computer,
            size: 40,
          ),
          SizedBox(width: 12),
          Expanded(
            child: GameResultItemWinner(
              gameStatus: data.status,
            ),
          ),
          Expanded(
            child: GameResultItemDate(
              gameDateTime: data.startDate,
            ),
          )
        ],
      ),
    );
  }
}
