import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';

class AppFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final PlainLocalizedString? errorText;
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
    return TextFormField(
      controller: controller,
      keyboardType: type,
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: _getValidationText(context),
        border: const OutlineInputBorder(),
      ),
      obscureText: obscureText,
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
