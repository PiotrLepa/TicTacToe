import 'package:flutter/material.dart';

class GameInvitationButtons extends StatelessWidget {
  final VoidCallback onButtonPressed;

  const GameInvitationButtons({
    Key key,
    @required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FlatButton(
          child: Text(
            'Decline',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor,
            ),
          ),
          onPressed: () {
            onButtonPressed();
          },
        ),
        FlatButton(
          child: Text(
            'Accept',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          onPressed: () {
            onButtonPressed();
          },
        )
      ],
    );
  }
}
