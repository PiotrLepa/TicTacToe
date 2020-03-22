import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';

class AppFormField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;
  final RawKeyString validator;

  const AppFormField({
    Key key,
    @required this.labelText,
    this.controller,
    this.validator,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formColor = Theme.of(context).primaryColor;
    return Theme(
      data: Theme.of(context).copyWith(
        accentColor: formColor,
        textSelectionHandleColor: formColor,
        textSelectionColor: formColor,
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: formColor,
        decoration: InputDecoration(
          labelText: labelText,
          errorText: _getValidationText(context),
          border: OutlineInputBorder(),
        ),
        obscureText: obscureText,
      ),
    );
  }

  String _getValidationText(BuildContext context) {
    if (validator != null) {
      return AppLocalizations.of(context).get(validator);
    } else {
      return null;
    }
  }
}
