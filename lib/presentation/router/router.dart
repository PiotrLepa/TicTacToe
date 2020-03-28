import 'package:auto_route/auto_route_annotations.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/error_flushbar.dart';
import 'package:tictactoe/presentation/game/game_screen.dart';
import 'package:tictactoe/presentation/home/home_screen.dart';
import 'package:tictactoe/presentation/login/login_screen.dart';
import 'package:tictactoe/presentation/registration/registration_screen.dart';
import 'package:tictactoe/presentation/start/start_screen.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  ErrorFlushbar errorFlushbar;

  @initial
  StartScreen startScreen;

  RegistrationScreen registrationScreen;

  LoginScreen loginScreen;

  HomeScreen homeScreen;

  GameScreen gameScreen;
}
