import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/domain/bloc/login/login_bloc.dart';
import 'package:tictactoe/presentation/widgets/app_field_form.dart';
import 'package:tictactoe/presentation/widgets/progress_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return buildForms(state);
              },
            ),
            SizedBox(height: 40),
            ProgressButton(
              text: AppLocalizations.of(context).loginScreenLoginButton,
              loadingText:
                  AppLocalizations.of(context).loginScreenLoadingButton,
              isLoading: _isLoading,
              onPressed: _loginUser,
            ),
          ],
        ),
      ),
    );
  }

  Column buildForms(LoginState state) {
    return Column(
      children: <Widget>[
        AppFormField(
          controller: _usernameController,
          validator: state.emailErrorKey,
          labelText: AppLocalizations.of(context).loginScreenUsernameHint,
        ),
        SizedBox(height: 20),
        AppFormField(
          controller: _passwordController,
          validator: state.passwordErrorKey,
          obscureText: true,
          labelText: AppLocalizations.of(context).loginScreenPasswordHint,
        ),
      ],
    );
  }

  void _loginUser() => context.bloc<LoginBloc>().add(
        LoginEvent.login(
          email: _usernameController.text,
          password: _passwordController.text,
        ),
      );

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
