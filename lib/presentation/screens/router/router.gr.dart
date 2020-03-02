// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/presentation/screens/game_results_page.dart';
import 'package:tictactoe/presentation/screens/home_screen.dart';
import 'package:tictactoe/presentation/screens/settings_page.dart';
import 'package:tictactoe/presentation/screens/start_game_page.dart';

class Router {
  static const homeScreen = '/';
  static const startGamePage = '/start-game-page';
  static const gameResultsPage = '/game-results-page';
  static const settingsPage = '/settings-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.homeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
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
