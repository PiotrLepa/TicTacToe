import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GameResultTab extends StatelessWidget {
  final String text;

  const GameResultTab({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
