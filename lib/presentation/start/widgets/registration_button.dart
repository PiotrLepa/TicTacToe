import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/core/presentation/theme/theme_provider.dart';
import 'package:tictactoe/domain/bloc/start_page/start_bloc.dart';

class RegistrationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context
          .read<StartBloc>()
          .add(const StartEvent.onRegistrationClicked()),
      child: Text(
        context.translate(Strings.startScreenRegistrationButton),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: ThemeProvider.of(context).textColorLight,
        ),
      ),
    );
  }
}
