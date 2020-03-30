import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_results_tab.dart';

class GameResultsTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Theme.of(context).accentColor,
      unselectedLabelColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: Colors.white,
      ),
      tabs: [
        GameResultTab(
          text: AppLocalizations.of(context).gameResultsUserTab,
        ),
        GameResultTab(
          text: AppLocalizations.of(context).gameResultsAllTab,
        ),
      ],
    );
  }
}
