import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GameResultTab extends StatelessWidget {
  final String text;

  const GameResultTab({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Align(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
