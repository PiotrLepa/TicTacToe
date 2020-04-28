import 'package:flutter/material.dart';

class GameInvitationTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Piotrek wants to play with you",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.white,
      ),
    );
  }
}
