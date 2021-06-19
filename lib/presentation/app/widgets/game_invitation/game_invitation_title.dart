import 'package:flutter/material.dart';

class GameInvitationTitle extends StatelessWidget {
  final String title;

  const GameInvitationTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.white,
      ),
    );
  }
}
