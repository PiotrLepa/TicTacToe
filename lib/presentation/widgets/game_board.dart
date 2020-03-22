import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/presentation/theme_provider.dart';

class GameBoard extends StatelessWidget {
  final Function(int) onFieldTapped;
  final BuiltList<GameMove> moves;

  const GameBoard({
    Key key,
    @required this.onFieldTapped,
    @required this.moves,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      children: _buildBoard(context),
    );
  }

  List<Widget> _buildBoard(BuildContext context) {
    return List.generate(
      9,
      (index) => Padding(
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
          onTap: () => onFieldTapped(index),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: FittedBox(
              child: Text(
                _getFieldText(index),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: _getFieldColor(context, index),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ignore: missing_return
  String _getFieldText(int index) {
    final mark = _getFieldMark(index);
    if (mark == null) {
      return "";
    }
    switch (mark) {
      case GameMark.x:
        return "X";
      case GameMark.o:
        return "O";
    }
  }

  // ignore: missing_return
  Color _getFieldColor(BuildContext context, int index) {
    final mark = _getFieldMark(index);
    if (mark == null) {
      return ThemeProvider.of(context).markXColor;
    }
    switch (mark) {
      case GameMark.x:
        return ThemeProvider.of(context).markXColor;
      case GameMark.o:
        return ThemeProvider.of(context).markOColor;
    }
  }

  GameMark _getFieldMark(int index) {
    final movesForIndex = moves.where((move) => move.fieldIndex == index);
    return movesForIndex.isNotEmpty ? movesForIndex.first.mark : null;
  }
}
