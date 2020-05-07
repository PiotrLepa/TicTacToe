import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/injection/injection.dart';
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
    Key key,
    @required this.gameId,
    @required this.socketDestination,
    @required this.playerMark,
    @required this.playerType,
    @required this.fromNotification,
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
        title: Text(context.translateKey('multiplayerGameScreenTitle')),
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
              _respondForState(state, context);
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
      loading: (mappedState) => Center(child: LoadingIndicator()),
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
              .bloc<MultiplayerGameBloc>()
              .add(MultiplayerGameEvent.onFieldTapped(index)),
        );
      },
      orElse: () => Container(),
    );
  }

  void _respondForState(MultiplayerGameState state, BuildContext context) {
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
            _showRestartGameFlushBar(
                context.translateKey('gameScreenStatusWon'));
            break;
          case MultiplayerGameCombinedStatus.lost:
            _showRestartGameFlushBar(
                context.translateKey('gameScreenStatusLost'));
            break;
          case MultiplayerGameCombinedStatus.draw:
            _showRestartGameFlushBar(
                context.translateKey('gameScreenStatusDraw'));
            break;
          case MultiplayerGameCombinedStatus.opponentLeftGame:
            break;
        }
      },
      moveError: (mappedState) {
        getIt.get<FlushbarHelper>().showError(
              message: mappedState.errorMessage,
            );
        setState(() {
          _isFieldLoadingVisible = false;
        });
      },
      error: (mappedState) {
        getIt.get<FlushbarHelper>().showError(
              message: mappedState.errorMessage,
            );
      },
      orElse: () {},
    );
  }

  Future<void> _showRestartGameFlushBar(String message) async {
    getIt.get<FlushbarHelper>().show(
          title: message,
          message: context.translateKey('gameScreenPlayAgainQuestion'),
          isDismissible: false,
          infinityDuration: true,
          icon: Icon(
            Icons.videogame_asset,
            color: Colors.white,
          ),
          mainButton: FlatButton(
            onPressed: () {
              getIt.get<FlushbarHelper>().dismiss();
              context
                  .bloc<MultiplayerGameBloc>()
                  .add(MultiplayerGameEvent.restartGame());
            },
            child: Text(
              context.translateKey('gameScreenPlayAgain'),
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        );
  }
}
