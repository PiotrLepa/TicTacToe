import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/util/locale_provider.dart';
import 'package:tictactoe/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:tictactoe/presentation/screens/game_results_page.dart';
import 'package:tictactoe/presentation/screens/settings_page.dart';
import 'package:tictactoe/presentation/screens/start_game_page.dart';

class HomeScreen extends StatelessWidget {
  final LocaleProvider _localeProvider = getIt.get<LocaleProvider>();

  final _pages = [
    StartGamePage(),
    GameResultsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    _localeProvider.currentLocale = Localizations.localeOf(context);
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (BuildContext context, BottomNavigationState state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).get(state.pageTitle)),
          ),
          body: IndexedStack(
            index: state.index,
            children: _pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: buildBottomNavItems(context),
            currentIndex: state.index,
            selectedItemColor: Theme.of(context).primaryColor,
            onTap: (index) => BlocProvider.of<BottomNavigationBloc>(context)
                .add(BottomNavigationEvent.onBottomNavigationTapped(index)),
          ),
        );
      },
    );
  }

  List<BottomNavigationBarItem> buildBottomNavItems(BuildContext context) =>
      [
        BottomNavigationBarItem(
          icon: Icon(Icons.gamepad),
          title: Text(AppLocalizations
              .of(context)
              .pageStartGame),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note),
          title: Text(AppLocalizations
              .of(context)
              .pageGameResults),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text(AppLocalizations
              .of(context)
              .pageSettings),
        ),
      ];
}
