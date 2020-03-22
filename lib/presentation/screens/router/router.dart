import 'package:auto_route/auto_route_annotations.dart';
import 'package:tictactoe/presentation/screens/game_screen.dart';
import 'package:tictactoe/presentation/screens/home_screen.dart';
import 'package:tictactoe/presentation/screens/login_screen.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  LoginScreen loginScreen;

  HomeScreen homeScreen;

  GameScreen gameScreen;
}
