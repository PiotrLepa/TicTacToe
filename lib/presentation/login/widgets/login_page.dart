import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/presentation/util/flushbar_helper.dart';
import 'package:tictactoe/domain/bloc/login/login_bloc.dart';
import 'package:tictactoe/presentation/common/app_field_form.dart';
import 'package:tictactoe/presentation/common/progress_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          _respondForState(state);
        },
        builder: (context, state) {
          return _buildFieldsAndButton(state);
        },
      ),
    );
  }

  void _respondForState(LoginState state) {
    state.maybeWhen(
      loading: (emailErrorKey, passwordErrorKey) {
        setState(() {
          _isLoading = true;
        });
      },
      error: (errorMessage, emailErrorKey, passwordErrorKey) {
        getIt.get<FlushbarHelper>().showError(
              message: errorMessage,
            );
        setState(() {
          _isLoading = false;
        });
      },
      orElse: () {},
    );
  }

  Column _buildFieldsAndButton(LoginState state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AppFormField(
          controller: _emailController,
          type: TextInputType.emailAddress,
          errorText: state.emailErrorKey,
          labelText: AppLocalizations.of(context).fieldEmailHint,
        ),
        SizedBox(height: 20),
        AppFormField(
          controller: _passwordController,
          errorText: state.passwordErrorKey,
          obscureText: true,
          labelText: AppLocalizations.of(context).fieldPasswordHint,
        ),
        SizedBox(height: 40),
        ProgressButton(
          text: AppLocalizations.of(context).loginScreenLoginButton,
          loadingText: AppLocalizations.of(context).loginScreenLoadingButton,
          isLoading: _isLoading,
          onPressed: () => _loginUser(state),
        ),
      ],
    );
  }

  void _loginUser(LoginState state) {
    if (state is Loading) return;
    FocusScope.of(context).unfocus();
    context.bloc<LoginBloc>().add(
      LoginEvent.login(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
