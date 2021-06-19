import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class BouncingWidget extends StatefulWidget {
  final Widget child;
  final Duration duration;

  const BouncingWidget({
    Key? key,
    required this.child,
    required this.duration,
  }) : super(key: key);

  @override
  _BouncingWidgetState createState() => _BouncingWidgetState();
}

class _BouncingWidgetState extends State<BouncingWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )
      ..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          setState(() {
            _controller.reverse();
          });
        } else if (status == AnimationStatus.dismissed) {
          setState(() {
            _controller.forward();
          });
        }
      })
      ..forward();
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: widget.child,
      builder: (context, child) {
        return Transform.scale(
          scale: 1 - (0.04 * _animation.value),
          child: child,
        );
      },
    );
  }
}
