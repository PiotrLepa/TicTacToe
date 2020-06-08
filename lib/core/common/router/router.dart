import 'package:auto_route/auto_route_annotations.dart';
import 'package:tictactoe/presentation/home/home_screen.dart';
import 'package:tictactoe/presentation/lobby/lobby_screen.dart';
import 'package:tictactoe/presentation/login/login_screen.dart';
import 'package:tictactoe/presentation/multiplayer_game/multiplayer_game_screen.dart';
import 'package:tictactoe/presentation/registration/registration_screen.dart';
import 'package:tictactoe/presentation/single_player_game/single_player_game_screen.dart';
import 'package:tictactoe/presentation/start/start_screen.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  StartScreen startScreen;

  RegistrationScreen registrationScreen;

  LoginScreen loginScreen;

  @initial
  HomeScreen homeScreen;

  SinglePlayerGameScreen singlePlayerGameScreen;

  MultiplayerGameScreen multiplayerGameScreen;

  LobbyScreen lobbyScreen;
}
