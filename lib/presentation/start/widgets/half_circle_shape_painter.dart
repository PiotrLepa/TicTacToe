import 'package:flutter/material.dart';

class HalfCircleShapePainter extends CustomPainter {
  final Color color;

  HalfCircleShapePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.height / 5;

    final halfOvalPath = Path();
    halfOvalPath.moveTo(0, radius);
    halfOvalPath.quadraticBezierTo(size.width / 2, -radius, size.width, radius);

    final squarePath = Path();
    squarePath.moveTo(0, radius);
    squarePath.lineTo(0, size.height);
    squarePath.lineTo(size.width, size.height);
    squarePath.lineTo(size.width, radius);

    final paint = Paint()..color = color;
    canvas.drawPath(halfOvalPath, paint);
    canvas.drawPath(squarePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
