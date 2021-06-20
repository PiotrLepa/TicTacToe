import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/injection/injection.dart';
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
          title: Text(context.translateKey('lobbyAppBarTitle')),
        ),
        body: BlocConsumer<LobbyBloc, LobbyState>(
          listener: (context, state) {
            state.maybeMap(
              error: (mappedState) {
                getIt.get<FlushbarHelper>().showError(
                      message: mappedState.errorMessage,
                    );
              },
              orElse: () {},
            );
          },
          buildWhen: (oldState, newState) =>
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
                    context.translate(mappedState.errorMessage),
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
