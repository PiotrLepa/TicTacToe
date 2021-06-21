import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/router/routing.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/domain/bloc/home/home_bloc.dart';
import 'package:tictactoe/presentation/game_results/game_results_screen.dart';
import 'package:tictactoe/presentation/start_game/start_game_screen.dart';

class HomeScreen extends StatelessWidget {
  final _pages = [
    StartGameScreen(),
    GameResultsScreen(),
//    SettingsScreen(), // TODO
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: _respondForState,
      buildWhen: (oldState, newState) => newState is UpdatePage,
      builder: _buildForState,
    );
  }

  void _respondForState(BuildContext context, HomeState state) {
    state.maybeMap(
      navigateToLogin: (_) {
        context.router.replaceAll([const LoginScreenRoute()]);
      },
      orElse: () {},
    );
  }

  Widget _buildForState(BuildContext context, HomeState state) {
    return state.maybeMap(
      updatePage: (s) => _buildPage(context, s),
      orElse: () {
        return const SizedBox();
      },
    );
  }

  Widget _buildPage(BuildContext context, UpdatePage state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translate(state.pageTitle)),
        elevation: 0,
      ),
      body: IndexedStack(
        index: state.index,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: buildBottomNavItems(context),
        currentIndex: state.index,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: (index) => context
            .read<HomeBloc>()
            .add(HomeEvent.onBottomNavigationTapped(index)),
      ),
    );
  }

  List<BottomNavigationBarItem> buildBottomNavItems(BuildContext context) => [
        BottomNavigationBarItem(
          icon: const Icon(Icons.gamepad),
          label: context.translate(Strings.pageStartGame),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.note),
          label: context.translate(Strings.pageGameResults),
        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.settings),
//          title: Text(context.translate(Strings.pageSettings)), // TODO
//        ),
      ];
}
