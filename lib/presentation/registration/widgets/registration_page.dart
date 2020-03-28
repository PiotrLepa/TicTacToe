import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/domain/bloc/registration/registration_bloc.dart';
import 'package:tictactoe/presentation/common/app_field_form.dart';
import 'package:tictactoe/presentation/common/progress_button.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool _isLoading = false;
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatedPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        _respondForState(state);
      },
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<RegistrationBloc, RegistrationState>(
              condition: (previous, current) =>
              current is Nothing ||
                  current is RenderInputsErrors ||
                  current is ClearInputsErrors,
              builder: (context, state) {
                return state.maybeMap(
                  renderInputsErrors: (mapState) => _buildFieldsAndButton(
                    usernameError: mapState.usernameError,
                    emailError: mapState.emailError,
                    passwordError: mapState.passwordError,
                    repeatedPasswordError: mapState.repeatedPasswordError,
                  ),
                  orElse: () => _buildFieldsAndButton(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _respondForState(RegistrationState state) {
    state.maybeWhen(
      loading: () {
        setState(() {
          _isLoading = true;
        });
      },
      error: (errorMessage) {
        setState(() {
          _isLoading = false;
        });
      },
      showSuccessFlushbar: () {
        setState(() {
          _isLoading = false;
        });
      },
      orElse: () {},
    );
  }

  Widget _buildFieldsAndButton({
    RawKeyString usernameError,
    RawKeyString emailError,
    RawKeyString passwordError,
    RawKeyString repeatedPasswordError,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AppFormField(
          controller: _usernameController,
          errorText: usernameError,
          labelText: AppLocalizations.of(context).fieldUsernameHint,
        ),
        SizedBox(height: 20),
        AppFormField(
          controller: _emailController,
          type: TextInputType.emailAddress,
          errorText: emailError,
          labelText: AppLocalizations.of(context).fieldEmailHint,
        ),
        SizedBox(height: 20),
        AppFormField(
          controller: _passwordController,
          errorText: passwordError,
          obscureText: true,
          labelText: AppLocalizations.of(context).fieldPasswordHint,
        ),
        SizedBox(height: 20),
        AppFormField(
          controller: _repeatedPasswordController,
          errorText: repeatedPasswordError,
          obscureText: true,
          labelText: AppLocalizations.of(context).fieldRepeatPasswordHint,
        ),
        SizedBox(height: 40),
        ProgressButton(
          text: AppLocalizations.of(context).registrationScreenButton,
          loadingText:
          AppLocalizations.of(context).registrationScreenLoadingButton,
          isLoading: _isLoading,
          onPressed: () => _registerUser(),
        ),
      ],
    );
  }

  void _registerUser() {
    context.bloc<RegistrationBloc>().add(
      RegistrationEvent.register(
        username: _usernameController.text,
        email: _emailController.text,
        password: _passwordController.text,
        repeatedPassword: _repeatedPasswordController.text,
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repeatedPasswordController.dispose();
    super.dispose();
  }
}
