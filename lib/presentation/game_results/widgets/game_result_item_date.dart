import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/date_time/date_time_formatter.dart';
import 'package:tictactoe/core/presentation/theme/theme_provider.dart';

class GameResultItemDate extends StatelessWidget {
  final String gameDateTime;
  final formatter = getIt<DateTimeFormatter>();

  GameResultItemDate({
    Key? key,
    required this.gameDateTime,
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
            color: ThemeProvider.of(context).textColor,
          ),
        ),
      ],
    );
  }

  String _formatTime() => formatter.format(gameDateTime, 'jm');
}
