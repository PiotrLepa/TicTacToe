import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/domain/bloc/multiplayer_game/entity/multiplayer_game_combined_status.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_player_type/multiplayer_player_type.dart';
import 'package:tictactoe/presentation/common/widgets/game_board.dart';
import 'package:tictactoe/presentation/common/widgets/game_player_mark.dart';
import 'package:tictactoe/presentation/common/widgets/loading_indicator.dart';
import 'package:tictactoe/presentation/multiplayer_game/widgets/multiplayer_game_status.dart';

class MultiplayerGamePage extends StatelessWidget {
  final MultiplayerPlayerType playerType;
  final GameMark playerMark;
  final MultiplayerGameCombinedStatus status;
  final KtList<GameMove> moves;
  final bool isLoadingVisible;
  final Function(int index) onFieldTapped;

  const MultiplayerGamePage({
    Key? key,
    required this.playerType,
    required this.playerMark,
    required this.status,
    required this.moves,
    required this.isLoadingVisible,
    required this.onFieldTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GamePlayerMark(playerMark: playerMark),
          GameStatus(status: status),
          Opacity(
            opacity: isLoadingVisible ? 1 : 0,
            child: const SizedBox(
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
