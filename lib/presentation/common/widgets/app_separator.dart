import 'package:flutter/material.dart';

class AppSeparator extends StatelessWidget {
  final double width;
  final double height;

  const AppSeparator({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  const AppSeparator.vertical({
    Key key,
    @required double height,
  })  : width = 0,
        height = height;

  const AppSeparator.horizontal({
    Key key,
    @required double width,
  })  : width = width,
        height = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
