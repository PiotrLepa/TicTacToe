import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/presentation/theme_provider.dart';

class GamePlayerMark extends StatelessWidget {
  final GameMark playerMark;

  const GamePlayerMark({
    Key key,
    @required this.playerMark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                ? ThemeProvider.of(context).markXColor
                : ThemeProvider.of(context).markOColor,
          ),
        ),
      ],
    );
  }
}
