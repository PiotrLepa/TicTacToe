import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';

class AppFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final RawKeyString validator;
  final TextInputType type;
  final bool obscureText;

  const AppFormField({
    Key key,
    @required this.labelText,
    this.controller,
    this.validator,
    this.type,
    this.obscureText,
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
        keyboardType: type,
        cursorColor: formColor,
        decoration: InputDecoration(
          labelText: labelText,
          errorText: _getValidationText(context),
          border: OutlineInputBorder(),
        ),
        obscureText: obscureText ?? false,
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
