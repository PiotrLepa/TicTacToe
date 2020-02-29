import 'package:auto_route/auto_route_annotations.dart';
import 'package:tictactoe/presentation/pages/game_results_page.dart';
import 'package:tictactoe/presentation/pages/settings_page.dart';
import 'package:tictactoe/presentation/pages/start_game_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartGamePage startGamePage;

  GameResultsPage gameResultsPage;

  SettingsPage settingsPage;
}
