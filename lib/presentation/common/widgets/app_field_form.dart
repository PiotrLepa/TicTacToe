import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';

class AppFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final RawKeyString? errorText;
  final TextInputType? type;
  final int? maxLength;
  final bool obscureText;

  const AppFormField({
    Key? key,
    required this.labelText,
    this.controller,
    this.errorText,
    this.type,
    this.maxLength,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formColor = Theme.of(context).primaryColor;
    return Theme(
      data: Theme.of(context).copyWith(
        accentColor: formColor,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: formColor,
          selectionColor: formColor,
          selectionHandleColor: formColor,
        ),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        cursorColor: formColor,
        maxLength: maxLength,
        decoration: InputDecoration(
          labelText: labelText,
          errorText: _getValidationText(context),
          border: const OutlineInputBorder(),
        ),
        obscureText: obscureText,
      ),
    );
  }

  String? _getValidationText(BuildContext context) {
    if (errorText != null) {
      return context.translate(errorText!);
    } else {
      return null;
    }
  }
}
