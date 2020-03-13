import 'package:flutter/material.dart';
import 'package:tictactoe/presentation/theme_provider.dart';

class GameBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      children: buildBoard(context),
    );
  }

  List<Widget> buildBoard(BuildContext context) {
    return List.generate(
      9,
      (i) => Padding(
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
          onTap: () => {},
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: FittedBox(
              child: Text(
                "",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: i % 2 == 0
                      ? ThemeProvider.of(context).markXColor
                      : ThemeProvider.of(context).markOColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
