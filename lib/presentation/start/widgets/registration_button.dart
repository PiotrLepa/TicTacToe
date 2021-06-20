import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/presentation/theme/theme_provider.dart';
import 'package:tictactoe/domain/bloc/start_page/start_bloc.dart';

class RegistrationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => context
          .read<StartBloc>()
          .add(const StartEvent.onRegistrationClicked()),
      child: Text(
        context.translateKey('startScreenRegistrationButton'),
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
