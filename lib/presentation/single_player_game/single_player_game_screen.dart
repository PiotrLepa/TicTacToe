import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/domain/bloc/single_player_game/single_player_game_bloc.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/presentation/common/widgets/loading_indicator.dart';
import 'package:tictactoe/presentation/single_player_game/widgets/single_player_game_page.dart';

class SinglePlayerGameScreen extends StatefulWidget {
  final DifficultyLevel difficultyLevel;

  const SinglePlayerGameScreen({
    Key key,
    @required this.difficultyLevel,
  }) : super(key: key);

  @override
  _SinglePlayerGameScreenState createState() => _SinglePlayerGameScreenState();
}

class _SinglePlayerGameScreenState extends State<SinglePlayerGameScreen> {
  bool _isFieldLoadingVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translateKey('singlePlayerGameScreenTitle')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocListener<SinglePlayerGameBloc, SinglePlayerGameState>(
          listener: (context, state) {
            _respondForState(state, context);
          },
          child: BlocBuilder<SinglePlayerGameBloc, SinglePlayerGameState>(
            condition: (oldState, newState) {
              return newState is Loading || newState is RenderGame;
            },
            builder: (context, state) {
              return _buildForState(state, context);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildForState(SinglePlayerGameState state, BuildContext context) {
    return state.maybeMap(
      loading: (mappedState) => Center(
        child: LoadingIndicator(),
      ),
      renderGame: (mappedState) => SinglePlayerGamePage(
          playerMark: mappedState.playerMark,
          moves: mappedState.moves,
          isLoadingVisible: _isFieldLoadingVisible,
          onFieldTapped: (index) => context
              .bloc<SinglePlayerGameBloc>()
              .add(SinglePlayerGameEvent.onFieldTapped(index))),
      orElse: () => Container(),
    );
  }

  void _respondForState(SinglePlayerGameState state, BuildContext context) {
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
      },
      playerWon: (mappedState) {
        setState(() {
          _isFieldLoadingVisible = false;
        });
        _showRestartGameFlushBar(
            context.translateKey('gameScreenStatusWon'));
      },
      computerWon: (mappedState) {
        setState(() {
          _isFieldLoadingVisible = false;
        });
        _showRestartGameFlushBar(
            context.translateKey('gameScreenStatusLost'));
      },
      draw: (mappedState) {
        setState(() {
          _isFieldLoadingVisible = false;
        });
        _showRestartGameFlushBar(context.translateKey('gameScreenStatusDraw'));
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
          context.bloc<SinglePlayerGameBloc>().add(
              SinglePlayerGameEvent.restartGame(widget.difficultyLevel));
        },
        child: Text(
          context.translateKey('gameScreenPlayAgain'),
          style: TextStyle(color: Theme
              .of(context)
              .primaryColor),
        ),
      ),
    );
  }
}
