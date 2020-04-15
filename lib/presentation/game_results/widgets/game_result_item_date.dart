import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';

class GameResultItemDate extends StatelessWidget {
  final int gameTime;

  const GameResultItemDate({
    Key key,
    @required this.gameTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          context.translateKey('gameResultsGameTime'),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(
          _formatTime(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  String _formatTime() {
    final date = DateTime.fromMicrosecondsSinceEpoch(gameTime * 1000);
    return '${date.hour} : ${date.minute}';
  }
}
