import 'package:auto_route/auto_route_annotations.dart';
import 'package:tictactoe/presentation/screens/game_results_page.dart';
import 'package:tictactoe/presentation/screens/home_screen.dart';
import 'package:tictactoe/presentation/screens/settings_page.dart';
import 'package:tictactoe/presentation/screens/start_game_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeScreen homeScreen;

  StartGamePage startGamePage;

  GameResultsPage gameResultsPage;

  SettingsPage settingsPage;
}
