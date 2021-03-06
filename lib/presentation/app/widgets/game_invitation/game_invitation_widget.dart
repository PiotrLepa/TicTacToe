import 'package:flutter/material.dart';
import 'package:tictactoe/presentation/app/widgets/game_invitation/game_invitation_buttons.dart';
import 'package:tictactoe/presentation/app/widgets/game_invitation/game_invitation_title.dart';

class GameInvitationWidget extends StatelessWidget {
  final String body;
  final VoidCallback onPlayPressed;
  final VoidCallback onDeclinePressed;

  const GameInvitationWidget({
    Key key,
    @required this.body,
    @required this.onPlayPressed,
    @required this.onDeclinePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Material(
        child: Wrap(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x44FFFFFF),
                      offset: Offset(0, 3),
                      blurRadius: 4,
                    ),
                  ]),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 16),
                  GameInvitationTitle(title: body),
                  SizedBox(height: 12),
                  GameInvitationButtons(
                    onPlayPressed: onPlayPressed,
                    onDeclinePressed: onDeclinePressed,
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
