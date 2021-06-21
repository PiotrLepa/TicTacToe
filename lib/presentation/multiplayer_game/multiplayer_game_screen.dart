import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/domain/bloc/multiplayer_game/entity/multiplayer_game_combined_status.dart';
import 'package:tictactoe/domain/bloc/multiplayer_game/multiplayer_game_bloc.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_player_type/multiplayer_player_type.dart';
import 'package:tictactoe/presentation/common/widgets/loading_indicator.dart';
import 'package:tictactoe/presentation/multiplayer_game/widgets/multiplayer_game_page.dart';
import 'package:tictactoe/presentation/multiplayer_game/widgets/waiting_for_opponent.dart';

class MultiplayerGameScreen extends StatefulWidget {
  final int gameId;
  final String socketDestination;
  final GameMark playerMark;
  final MultiplayerPlayerType playerType;
  final bool fromNotification;

  const MultiplayerGameScreen({
    Key? key,
    required this.gameId,
    required this.socketDestination,
    required this.playerMark,
    required this.playerType,
    required this.fromNotification,
  }) : super(key: key);

  @override
  _MultiplayerGameScreenState createState() => _MultiplayerGameScreenState();
}

class _MultiplayerGameScreenState extends State<MultiplayerGameScreen> {
  bool _isFieldLoadingVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translate(Strings.multiplayerGameScreenTitle)),
      ),
      body: BlocProvider<MultiplayerGameBloc>(
        create: (context) => getIt.get<MultiplayerGameBloc>()
          ..add(MultiplayerGameEvent.screenStarted(
            gameId: widget.gameId,
            socketDestination: widget.socketDestination,
            playerType: widget.playerType,
            fromNotification: widget.fromNotification,
          )),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: BlocConsumer<MultiplayerGameBloc, MultiplayerGameState>(
            listener: (context, state) {
              _respondForState(context, state);
            },
            buildWhen: (oldState, newState) =>
            newState is Loading ||
                newState is RenderGame ||
                newState is RenderWaitingForOpponent,
            builder: (context, state) {
              return _buildForState(state, context);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildForState(MultiplayerGameState state, BuildContext context) {
    return state.maybeMap(
      loading: (mappedState) => const Center(child: LoadingIndicator()),
      renderWaitingForOpponent: (mappedState) =>
          Center(child: WaitingForOpponent()),
      renderGame: (mappedState) {
        return MultiplayerGamePage(
          playerMark: widget.playerMark,
          playerType: widget.playerType,
          status: mappedState.status,
          moves: mappedState.moves,
          isLoadingVisible: _isFieldLoadingVisible,
          onFieldTapped: (index) => context
              .read<MultiplayerGameBloc>()
              .add(MultiplayerGameEvent.onFieldTapped(index)),
        );
      },
      orElse: () => Container(),
    );
  }

  void _respondForState(BuildContext context,
      MultiplayerGameState state,) {
    state.maybeMap(
      moveLoading: (mappedState) {
        setState(() {
          _isFieldLoadingVisible = true;
        });
      },
      renderGame: (mappedState) {
        setState(() {
          _isFieldLoadingVisible = false;
        });
        switch (mappedState.status) {
          case MultiplayerGameCombinedStatus.waitingForOpponentToConnect:
          case MultiplayerGameCombinedStatus.yourTurn:
          case MultiplayerGameCombinedStatus.opponentTurn:
            break;
          case MultiplayerGameCombinedStatus.won:
            _showRestartGameFlushBar(context, Strings.gameScreenStatusWon);
            break;
          case MultiplayerGameCombinedStatus.lost:
            _showRestartGameFlushBar(context, Strings.gameScreenStatusLost);
            break;
          case MultiplayerGameCombinedStatus.draw:
            _showRestartGameFlushBar(context, Strings.gameScreenStatusDraw);
            break;
          case MultiplayerGameCombinedStatus.opponentLeftGame:
            break;
        }
      },
      moveError: (mappedState) {
        getIt.get<FlushbarHelper>().showError(
          message: mappedState.message,
            );
        setState(() {
          _isFieldLoadingVisible = false;
        });
      },
      error: (mappedState) {
        getIt.get<FlushbarHelper>().showError(
          message: mappedState.message,
            );
      },
      orElse: () {},
    );
  }

  Future<void> _showRestartGameFlushBar(
    BuildContext context,
    PlainLocalizedString message,
  ) async {
    getIt.get<FlushbarHelper>().show(
          title: message,
          message: Strings.gameScreenPlayAgainQuestion,
          isDismissible: false,
          duration: null,
          icon: const Icon(
            Icons.videogame_asset,
            color: Colors.white,
          ),
          mainButton: TextButton(
            onPressed: () {
              getIt.get<FlushbarHelper>().dismiss();
              context
                  .read<MultiplayerGameBloc>()
                  .add(const MultiplayerGameEvent.restartGame());
            },
            child: Text(
              context.translate(Strings.gameScreenPlayAgain),
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        );
  }
}
