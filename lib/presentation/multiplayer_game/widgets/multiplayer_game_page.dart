import 'package:flutter/widgets.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_player_type/multiplayer_player_type.dart';
import 'package:tictactoe/domain/entity/multiplayer_game_response/multiplayer_game_response.dart';
import 'package:tictactoe/presentation/common/widgets/game_board.dart';
import 'package:tictactoe/presentation/common/widgets/game_player_mark.dart';
import 'package:tictactoe/presentation/common/widgets/loading_indicator.dart';
import 'package:tictactoe/presentation/multiplayer_game/widgets/multiplayer_game_status.dart';

class MultiplayerGamePage extends StatelessWidget {
  final MultiplayerGameResponse gameData;
  final MultiplayerPlayerType playerType;
  final GameMark playerMark;
  final bool isLoadingVisible;
  final Function(int index) onFieldTapped;

  const MultiplayerGamePage({
    Key key,
    @required this.gameData,
    @required this.playerType,
    @required this.playerMark,
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
          GameStatus(
            player: playerType,
            currentTurn: gameData.currentTurn,
            gameStatus: gameData.status,
          ),
          Opacity(
            opacity: isLoadingVisible ? 1 : 0,
            child: SizedBox(
              width: 50,
              height: 50,
              child: LoadingIndicator(),
            ),
          ),
          GameBoard(
            moves: gameData.moves,
            onFieldTapped: onFieldTapped,
          ),
        ],
      ),
    );
  }
}
