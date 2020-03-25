import 'package:auto_route/auto_route_annotations.dart';
import 'package:tictactoe/presentation/game/game_screen.dart';
import 'package:tictactoe/presentation/home/home_screen.dart';
import 'package:tictactoe/presentation/login/login_screen.dart';
import 'package:tictactoe/presentation/start/start_screen.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  LoginScreen loginScreen;

  HomeScreen homeScreen;

  @initial
  StartScreen startScreen;

  GameScreen gameScreen;
}
