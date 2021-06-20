import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/core/presentation/theme/theme_provider.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';

class GamePlayerMark extends StatelessWidget {
  final GameMark playerMark;

  const GamePlayerMark({
    Key? key,
    required this.playerMark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          context.translate(Strings.gameScreenPlayerMark),
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          playerMark == GameMark.x ? 'X' : 'O',
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
