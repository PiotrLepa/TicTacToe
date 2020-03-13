import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/domain/common/game_mark/game_mark.dart';
import 'package:tictactoe/presentation/theme_provider.dart';
import 'package:tictactoe/presentation/widgets/game_board.dart';

class GameScreen extends StatelessWidget {
  final int gameId;
  final GameMark playerMark;

  const GameScreen({
    @required this.gameId,
    @required this.playerMark,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).gameScreenTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildPlayerMark(context),
              GameBoard(),
            ],
          ),
        ),
      ),
    );
  }

  Column buildPlayerMark(BuildContext context) {
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
          playerMark == GameMark.x ? "X" : "O",
          style: TextStyle(
            fontSize: 84,
            fontWeight: FontWeight.bold,
            color: playerMark == GameMark.x
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
