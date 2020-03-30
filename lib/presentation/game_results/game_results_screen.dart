import 'package:flutter/material.dart';
import 'package:tictactoe/presentation/game_results/widgets/all_game_results.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_results_tab_bar.dart';
import 'package:tictactoe/presentation/game_results/widgets/user_game_results.dart';

class GameResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            child: GameResultsTabBar(),
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                UserGameResults(),
                AllGameResults(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
