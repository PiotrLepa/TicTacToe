import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProgressButton extends StatelessWidget {
  final String text;
  final String loadingText;
  final Function() onPressed;
  final bool isLoading;

  const ProgressButton({
    Key? key,
    required this.text,
    required this.loadingText,
    required this.isLoading,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: isLoading ? _buildLoadingWidgets() : _buildDefaultWidgets(),
        ),
      ),
    );
  }

  List<Widget> _buildDefaultWidgets() {
    return [_buildText()];
  }

  List<Widget> _buildLoadingWidgets() {
    return [
      _buildText(),
      SizedBox(width: 20),
      SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 3,
        ),
      )
    ];
  }

  Text _buildText() {
    return Text(
      isLoading ? loadingText : text,
      style: TextStyle(
        fontSize: 24,
      ),
    );
  }
}
