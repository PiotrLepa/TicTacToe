// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tictactoe/presentation/screens/login_screen.dart';
import 'package:tictactoe/presentation/screens/home_screen.dart';
import 'package:tictactoe/presentation/screens/game_screen.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';

abstract class Routes {
  static const loginScreen = '/';
  static const homeScreen = '/home-screen';
  static const gameScreen = '/game-screen';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => LoginScreen(),
          settings: settings,
        );
      case Routes.homeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case Routes.gameScreen:
        if (hasInvalidArgs<GameScreenArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<GameScreenArguments>(args);
        }
        final typedArgs = args as GameScreenArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => GameScreen(
              key: typedArgs.key, difficultyLevel: typedArgs.difficultyLevel),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//GameScreen arguments holder class
class GameScreenArguments {
  final Key key;
  final DifficultyLevel difficultyLevel;
  GameScreenArguments({this.key, @required this.difficultyLevel});
}

//**************************************************************************
// Navigation helper methods extension
//***************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushLoginScreen() => pushNamed(Routes.loginScreen);
  Future pushHomeScreen() => pushNamed(Routes.homeScreen);
  Future pushGameScreen({
    Key key,
    @required DifficultyLevel difficultyLevel,
  }) =>
      pushNamed(Routes.gameScreen,
          arguments:
              GameScreenArguments(key: key, difficultyLevel: difficultyLevel));
}
