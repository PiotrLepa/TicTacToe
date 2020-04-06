import 'package:flutter/material.dart';
import 'package:tictactoe/domain/entity/game_result_response/game_result_type.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_result_page.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_results_tab_bar.dart';

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
                GameResults(
                  type: GameResultType.user,
                ),
                GameResults(
                  type: GameResultType.all,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
