import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/presentation/util/flushbar_helper.dart';
import 'package:tictactoe/domain/bloc/game/game_bloc.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/presentation/common/loading_indicator.dart';
import 'package:tictactoe/presentation/game/widgets/game_page.dart';

class GameScreen extends StatefulWidget {
  final DifficultyLevel difficultyLevel;

  const GameScreen({
    Key key,
    @required this.difficultyLevel,
  }) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  bool _isFieldLoadingVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).gameScreenTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocListener<GameBloc, GameState>(
          listener: (context, state) {
            _respondForState(state, context);
          },
          child: BlocBuilder<GameBloc, GameState>(
            condition: (oldState, newState) {
              return newState is Loading || newState is RenderGame;
            },
            builder: (context, state) {
              return _renderForState(state, context);
            },
          ),
        ),
      ),
    );
  }

  Widget _renderForState(GameState state, BuildContext context) {
    return state.maybeMap(
      loading: (_) => Center(
        child: LoadingIndicator(),
      ),
      renderGame: (renderGame) => GamePage(
          playerMark: renderGame.playerMark,
          moves: renderGame.moves,
          isLoadingVisible: _isFieldLoadingVisible,
          onFieldTapped: (index) =>
              context.bloc<GameBloc>().add(GameEvent.onFieldTapped(index))),
      orElse: () => Container(),
    );
  }

  void _respondForState(GameState state, BuildContext context) {
    state.maybeWhen(
      moveLoading: () {
        setState(() {
          _isFieldLoadingVisible = true;
        });
      },
      renderGame: (playerMark, moves) {
        setState(() {
          _isFieldLoadingVisible = false;
        });
      },
      playerWon: () {
        setState(() {
          _isFieldLoadingVisible = false;
        });
        _showRestartGameFlushBar(
            AppLocalizations.of(context).gameScreenStatusPlayerWon);
      },
      computerWon: () {
        setState(() {
          _isFieldLoadingVisible = false;
        });
        _showRestartGameFlushBar(
            AppLocalizations.of(context).gameScreenStatusComputerWon);
      },
      draw: () {
        setState(() {
          _isFieldLoadingVisible = false;
        });
        _showRestartGameFlushBar(
            AppLocalizations.of(context).gameScreenStatusDraw);
      },
      moveError: (errorMessage) {
        getIt.get<FlushbarHelper>().showError(
              message: errorMessage,
            );
        setState(() {
          _isFieldLoadingVisible = false;
        });
      },
      error: (errorMessage) {
        getIt.get<FlushbarHelper>().showError(
              message: errorMessage,
            );
      },
      orElse: () {},
    );
  }

  Future<void> _showRestartGameFlushBar(String message) async {
    getIt.get<FlushbarHelper>().show(
          title: message,
          message: AppLocalizations.of(context).gameScreenPlayAgainQuestion,
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
                  .bloc<GameBloc>()
                  .add(GameEvent.restartGame(widget.difficultyLevel));
            },
            child: Text(
              AppLocalizations.of(context).gameScreenPlayAgain,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        );
  }
}
