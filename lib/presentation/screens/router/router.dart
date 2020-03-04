import 'package:auto_route/auto_route_annotations.dart';
import 'package:tictactoe/presentation/screens/game_screen.dart';
import 'package:tictactoe/presentation/screens/home_screen.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeScreen homeScreen;

  GameScreen gameScreen;
}
