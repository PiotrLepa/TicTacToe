import 'package:auto_route/annotations.dart';
import 'package:tictactoe/presentation/app/parent/auth_parent_screen.dart';
import 'package:tictactoe/presentation/home/home_screen.dart';
import 'package:tictactoe/presentation/lobby/lobby_screen.dart';
import 'package:tictactoe/presentation/login/login_screen.dart';
import 'package:tictactoe/presentation/multiplayer_game/multiplayer_game_screen.dart';
import 'package:tictactoe/presentation/registration/registration_screen.dart';
import 'package:tictactoe/presentation/single_player_game/single_player_game_screen.dart';
import 'package:tictactoe/presentation/start/start_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute<void>(
      page: AuthParentScreen,
      initial: true,
      children: [
        MaterialRoute<void>(page: HomeScreen, initial: true),
        MaterialRoute<void>(page: SinglePlayerGameScreen),
        MaterialRoute<void>(page: MultiplayerGameScreen),
        MaterialRoute<void>(page: LobbyScreen),
      ],
    ),
    MaterialRoute<void>(page: StartScreen),
    MaterialRoute<void>(page: RegistrationScreen),
    MaterialRoute<void>(page: LoginScreen),
  ],
)
class $AppRouter {}
