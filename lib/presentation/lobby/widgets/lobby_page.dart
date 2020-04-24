import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/domain/bloc/lobby/lobby_bloc.dart';
import 'package:tictactoe/presentation/common/widgets/app_separator.dart';
import 'package:tictactoe/presentation/lobby/widgets/opponent_code.dart';
import 'package:tictactoe/presentation/lobby/widgets/palyer_code.dart';

class LobbyPage extends StatefulWidget {
  @override
  _LobbyPageState createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            AppSeparator.vertical(height: height / 8),
            _buildPlayerCode(context),
            AppSeparator.vertical(height: height / 8),
            _buildOpponentCode(context),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayerCode(BuildContext context) {
    return BlocBuilder<LobbyBloc, LobbyState>(
      condition: (oldState, newState) => newState is RenderPage,
      builder: (context, state) {
        return state.maybeMap(
          renderPage: (mappedState) =>
              PlayerCode(playerCode: mappedState.playerCode),
          orElse: () => Container(),
        );
      },
    );
  }

  Widget _buildOpponentCode(BuildContext context) {
    return BlocBuilder<LobbyBloc, LobbyState>(
      condition: (oldState, newState) =>
          newState is RenderPage ||
          newState is RenderOpponentCodeInputError ||
          newState is CreateGameLoading ||
          newState is CreateGameSuccess ||
          newState is CreateGameError,
      builder: (context, state) {
        return state.maybeMap(
          renderPage: (mappedState) => OpponentCode(),
          renderOpponentCodeInputError: (mappedState) => OpponentCode(
            inputError: mappedState.errorKey,
          ),
          createGameLoading: (mappedState) => OpponentCode(
            isLoading: true,
          ),
          createGameSuccess: (mappedState) => OpponentCode(),
          createGameError: (mappedState) {
            getIt<FlushbarHelper>().showError(
              message: mappedState.errorMessage,
            );
            return OpponentCode();
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
