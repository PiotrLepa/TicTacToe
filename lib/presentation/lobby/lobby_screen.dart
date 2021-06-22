import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/common/router/routing.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/domain/bloc/lobby/lobby_bloc.dart';
import 'package:tictactoe/presentation/common/widgets/loading_indicator.dart';
import 'package:tictactoe/presentation/lobby/widgets/lobby_page.dart';

class LobbyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LobbyBloc>(
      create: (context) =>
          getIt<LobbyBloc>()..add(const LobbyEvent.screenStarted()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.translate(Strings.lobbyAppBarTitle)),
        ),
        body: BlocConsumer<LobbyBloc, LobbyState>(
          listener: (context, state) {
            state.maybeMap(
              error: (mappedState) {
                getIt.get<FlushbarHelper>().showError(
                      message: mappedState.message,
                    );
              },
              navigateToGame: (mappedState) {
                final response = mappedState.response;
                context.router.push(
                  MultiplayerGameScreenRoute(
                    gameId: response.gameId,
                    socketDestination: response.socketDestination,
                    playerMark: response.yourMark,
                    playerType: response.playerType,
                    fromNotification: false,
                  ),
                );
              },
              orElse: () {},
            );
          },
          buildWhen: (_, newState) =>
              newState is Loading ||
              newState is Error ||
              newState is RenderPage,
          builder: (context, state) {
            return state.maybeMap(
              loading: (mappedState) {
                return const Center(
                  child: LoadingIndicator(),
                );
              },
              renderPage: (mappedState) {
                return LobbyPage();
              },
              error: (mappedState) {
                return Center(
                  child: Text(
                    context.translate(mappedState.message),
                  ),
                );
              },
              orElse: () {
                return Container();
              },
            );
          },
        ),
      ),
    );
  }
}
