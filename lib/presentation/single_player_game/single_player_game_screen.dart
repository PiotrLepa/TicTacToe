import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/domain/bloc/single_player_game/single_player_game_bloc.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/presentation/common/widgets/loading_indicator.dart';
import 'package:tictactoe/presentation/single_player_game/widgets/single_player_game_page.dart';

class SinglePlayerGameScreen extends StatefulWidget {
  final DifficultyLevel difficultyLevel;

  const SinglePlayerGameScreen({
    Key? key,
    required this.difficultyLevel,
  }) : super(key: key);

  @override
  _SinglePlayerGameScreenState createState() => _SinglePlayerGameScreenState();
}

class _SinglePlayerGameScreenState extends State<SinglePlayerGameScreen> {
  bool _isFieldLoadingVisible = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SinglePlayerGameBloc>(
      create: (context) => getIt.get<SinglePlayerGameBloc>()
        ..add(SinglePlayerGameEvent.createGame(widget.difficultyLevel)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.translate(Strings.singlePlayerGameScreenTitle)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: BlocConsumer<SinglePlayerGameBloc, SinglePlayerGameState>(
            listener: _respondForState,
            buildWhen: (_, newState) =>
                newState is Loading || newState is RenderGame,
            builder: _buildForState,
          ),
        ),
      ),
    );
  }

  Widget _buildForState(BuildContext context, SinglePlayerGameState state) {
    return state.maybeMap(
      loading: (mappedState) => const Center(
        child: LoadingIndicator(),
      ),
      renderGame: (mappedState) => SinglePlayerGamePage(
          playerMark: mappedState.playerMark,
          moves: mappedState.moves,
          isLoadingVisible: _isFieldLoadingVisible,
          onFieldTapped: (index) => context
              .read<SinglePlayerGameBloc>()
              .add(SinglePlayerGameEvent.onFieldTapped(index))),
      orElse: () => Container(),
    );
  }

  void _respondForState(BuildContext context, SinglePlayerGameState state) {
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
          context,
          Strings.gameScreenStatusWon,
        );
      },
      computerWon: (mappedState) {
        setState(() {
          _isFieldLoadingVisible = false;
        });
        _showRestartGameFlushBar(
          context,
          Strings.gameScreenStatusLost,
        );
      },
      draw: (mappedState) {
        setState(() {
          _isFieldLoadingVisible = false;
        });
        _showRestartGameFlushBar(
          context,
          Strings.gameScreenStatusDraw,
        );
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
              context.read<SinglePlayerGameBloc>().add(
                  SinglePlayerGameEvent.restartGame(widget.difficultyLevel));
        },
        child: Text(
          context.translate(Strings.gameScreenPlayAgain),
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
