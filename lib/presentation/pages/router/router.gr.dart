// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tictactoe/presentation/pages/start_game_page.dart';
import 'package:tictactoe/presentation/pages/game_results_page.dart';
import 'package:tictactoe/presentation/pages/settings_page.dart';

class Router {
  static const startGamePage = '/';
  static const gameResultsPage = '/game-results-page';
  static const settingsPage = '/settings-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.startGamePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => StartGamePage(),
          settings: settings,
        );
      case Router.gameResultsPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => GameResultsPage(),
          settings: settings,
        );
      case Router.settingsPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SettingsPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
