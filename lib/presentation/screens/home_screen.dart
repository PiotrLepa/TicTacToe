import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/presentation/bloc/bottom_navigation/BottomNavigationBloc.dart';
import 'package:tictactoe/presentation/bloc/bottom_navigation/bottom_navigation_event.dart';
import 'package:tictactoe/presentation/bloc/bottom_navigation/bottom_navigation_state.dart';
import 'package:tictactoe/presentation/screens/game_results_page.dart';
import 'package:tictactoe/presentation/screens/settings_page.dart';
import 'package:tictactoe/presentation/screens/start_game_page.dart';

class HomeScreen extends StatelessWidget {
  final _pages = [StartGamePage(), GameResultsPage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBloc _bottomNavigationBloc =
        getIt.get<BottomNavigationBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).hello),
      ),
      body: BlocProvider(
        create: (BuildContext context) => _bottomNavigationBloc,
        child: BlocBuilder(
          bloc: _bottomNavigationBloc,
          builder: (BuildContext context, BottomNavigationState state) {
            return IndexedStack(
              index: state.index,
              children: _pages,
            );
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder(
          bloc: _bottomNavigationBloc,
          builder: (BuildContext context, BottomNavigationState state) {
            return BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.gamepad),
                  title: Text("Game"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.note),
                  title: Text("Results"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
              ],
              selectedItemColor: Colors.amber[800],
              currentIndex: state.index,
              onTap: (index) => _bottomNavigationBloc
                  .add(BottomNavigationEvent.onBottomNavigationTapped(index)),
            );
          }),
    );
  }
}
