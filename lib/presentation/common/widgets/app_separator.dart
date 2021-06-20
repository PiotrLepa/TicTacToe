import 'package:flutter/material.dart';

class AppSeparator extends StatelessWidget {
  final double width;
  final double height;

  const AppSeparator({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  const AppSeparator.vertical({
    Key? key,
    required this.height,
  })  : width = 0,
        super(key: key);

  const AppSeparator.horizontal({
    Key? key,
    required this.width,
  })  : height = 0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
