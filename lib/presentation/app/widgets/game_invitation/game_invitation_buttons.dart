import 'package:flutter/material.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';

class GameInvitationButtons extends StatelessWidget {
  final VoidCallback onPlayPressed;
  final VoidCallback onDeclinePressed;

  const GameInvitationButtons({
    Key? key,
    required this.onPlayPressed,
    required this.onDeclinePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FlatButton(
          child: Text(
            context.translateKey('gameInvitationDeclineButton'),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor,
            ),
          ),
          onPressed: () {
            onDeclinePressed();
          },
        ),
        FlatButton(
          child: Text(
            context.translateKey('gameInvitationPlayButton'),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme
                  .of(context)
                  .primaryColor,
            ),
          ),
          onPressed: () {
            onPlayPressed();
          },
        )
      ],
    );
  }
}
