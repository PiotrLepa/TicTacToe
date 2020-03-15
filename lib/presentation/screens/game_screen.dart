import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/domain/bloc/game/game_bloc.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/presentation/theme_provider.dart';
import 'package:tictactoe/presentation/widgets/game_board.dart';
import 'package:tictactoe/presentation/widgets/loading_indicator.dart';

class GameScreen extends StatelessWidget {
  final DifficultyLevel difficultyLevel;

  const GameScreen({
    Key key,
    @required this.difficultyLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).gameScreenTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocBuilder<GameBloc, GameState>(
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => Center(
                child: LoadingIndicator(),
              ),
              gameCreated: (gameCrated) => _buildGamePage(context, gameCrated),
              orElse: () => Container(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildGamePage(BuildContext context, GameCreated state) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildPlayerMark(context, state),
          GameBoard(),
        ],
      ),
    );
  }

  Column _buildPlayerMark(BuildContext context, GameCreated state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          AppLocalizations.of(context).gameScreenPlayerMark,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          state.playerMark == GameMark.x ? "X" : "O",
          style: TextStyle(
            fontSize: 84,
            fontWeight: FontWeight.bold,
            color: state.playerMark == GameMark.x
                ? ThemeProvider
                .of(context)
                .markXColor
                : ThemeProvider
                .of(context)
                .markOColor,
          ),
        ),
      ],
    );
  }
}
