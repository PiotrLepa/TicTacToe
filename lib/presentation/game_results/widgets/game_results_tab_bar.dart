import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_results_tab.dart';

class GameResultsTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Theme.of(context).accentColor,
      unselectedLabelColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: Colors.white,
      ),
      tabs: [
        GameResultTab(
          text: context.translate(Strings.gameResultsUserTab),
        ),
        GameResultTab(
          text: context.translate(Strings.gameResultsAllTab),
        ),
      ],
    );
  }
}
