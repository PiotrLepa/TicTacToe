import 'package:flutter/material.dart';

class ItemFader extends StatefulWidget {
  final Widget child;

  const ItemFader({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  ItemFaderState createState() => ItemFaderState();
}

class ItemFaderState extends State<ItemFader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isVisible = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
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
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value * 50.0),
          child: Visibility(
            visible: _isVisible,
            child: Opacity(
              opacity: _animation.value,
              child: child,
            ),
          ),
        );
      },
      child: widget.child,
    );
  }

  void show() {
    setState(() {
      _isVisible = true;
      _controller.forward();
    });
  }

  void hide() {
    setState(() {
      _isVisible = false;
      _controller.reverse();
    });
  }
}
