// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tictactoe/presentation/screens/home_screen.dart';
import 'package:tictactoe/presentation/screens/game_screen.dart';
import 'package:tictactoe/domain/common/game_mark/game_mark.dart';

class Router {
  static const homeScreen = '/';
  static const gameScreen = '/game-screen';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.homeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case Router.gameScreen:
        if (hasInvalidArgs<GameScreenArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<GameScreenArguments>(args);
        }
        final typedArgs = args as GameScreenArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => GameScreen(
              gameId: typedArgs.gameId, playerMark: typedArgs.playerMark),
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
  final int gameId;
  final GameMark playerMark;
  GameScreenArguments({@required this.gameId, @required this.playerMark});
}
