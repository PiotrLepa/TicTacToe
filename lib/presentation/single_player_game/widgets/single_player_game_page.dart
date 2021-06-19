import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/presentation/common/widgets/game_board.dart';
import 'package:tictactoe/presentation/common/widgets/game_player_mark.dart';
import 'package:tictactoe/presentation/common/widgets/loading_indicator.dart';

class SinglePlayerGamePage extends StatelessWidget {
  final GameMark playerMark;
  final KtList<GameMove> moves;
  final bool isLoadingVisible;
  final Function(int index) onFieldTapped;

  const SinglePlayerGamePage({
    Key? key,
    required this.playerMark,
    required this.moves,
    required this.isLoadingVisible,
    required this.onFieldTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GamePlayerMark(playerMark: playerMark),
            Opacity(
              opacity: isLoadingVisible ? 1 : 0,
              child: SizedBox(
                width: 50,
                height: 50,
                child: LoadingIndicator(),
              ),
            ),
            GameBoard(
              moves: moves,
              onFieldTapped: onFieldTapped,
            ),
          ],
        ),
      ),
    );
  }
}
