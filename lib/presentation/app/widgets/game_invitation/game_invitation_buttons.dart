import 'package:flutter/material.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';

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
          onPressed: () {
            onDeclinePressed();
          },
          child: Text(
            Strings.gameInvitationDeclineButton.get(context),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            onPlayPressed();
          },
          child: Text(
            Strings.gameInvitationPlayButton.get(context),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
