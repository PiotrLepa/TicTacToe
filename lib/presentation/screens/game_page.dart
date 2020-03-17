import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/presentation/screens/game_player_mark.dart';
import 'package:tictactoe/presentation/widgets/game_board.dart';
import 'package:tictactoe/presentation/widgets/loading_indicator.dart';

class GamePage extends StatelessWidget {
  final GameMark playerMark;
  final BuiltList<GameMove> moves;
  final bool isLoadingVisible;
  final Function(int index) onFieldTapped;

  const GamePage({
    Key key,
    @required this.playerMark,
    @required this.moves,
    @required this.isLoadingVisible,
    @required this.onFieldTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
