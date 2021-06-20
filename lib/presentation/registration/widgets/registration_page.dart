import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/domain/bloc/registration/registration_bloc.dart';
import 'package:tictactoe/presentation/common/widgets/app_field_form.dart';
import 'package:tictactoe/presentation/common/widgets/progress_button.dart';

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
              buildWhen: (previous, current) =>
                  current is Nothing ||
                  current is RenderInputsErrors ||
                  current is ClearInputsErrors,
              builder: (context, state) {
                return state.maybeMap(
                  renderInputsErrors: (mappedState) => _buildFieldsAndButton(
                    usernameError: mappedState.usernameError,
                    emailError: mappedState.emailError,
                    passwordError: mappedState.passwordError,
                    repeatedPasswordError: mappedState.repeatedPasswordError,
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
    state.maybeMap(
      loading: (mappedState) {
        setState(() {
          _isLoading = true;
        });
      },
      error: (mappedState) {
        getIt.get<FlushbarHelper>().showError(
              message: mappedState.errorMessage,
            );
        setState(() {
          _isLoading = false;
        });
      },
      showSuccessFlushbar: (mappedState) {
        getIt.get<FlushbarHelper>().showSuccess(
              message:
                  context.translateKey('registrationScreenRegistrationSuccess'),
            );
        setState(() {
          _isLoading = false;
        });
      },
      orElse: () {},
    );
  }

  Widget _buildFieldsAndButton({
    RawKeyString? usernameError,
    RawKeyString? emailError,
    RawKeyString? passwordError,
    RawKeyString? repeatedPasswordError,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AppFormField(
          controller: _usernameController,
          errorText: usernameError,
          labelText: context.translateKey('fieldUsernameHint'),
        ),
        const SizedBox(height: 20),
        AppFormField(
          controller: _emailController,
          type: TextInputType.emailAddress,
          errorText: emailError,
          labelText: context.translateKey('fieldEmailHint'),
        ),
        const SizedBox(height: 20),
        AppFormField(
          controller: _passwordController,
          errorText: passwordError,
          obscureText: true,
          labelText: context.translateKey('fieldPasswordHint'),
        ),
        const SizedBox(height: 20),
        AppFormField(
          controller: _repeatedPasswordController,
          errorText: repeatedPasswordError,
          obscureText: true,
          labelText: context.translateKey('fieldRepeatPasswordHint'),
        ),
        const SizedBox(height: 40),
        ProgressButton(
          text: context.translateKey('registrationScreenButton'),
          loadingText: context.translateKey('registrationScreenLoadingButton'),
          isLoading: _isLoading,
          onPressed: () => _registerUser(),
        ),
      ],
    );
  }

  void _registerUser() {
    FocusScope.of(context).unfocus();
    context.read<RegistrationBloc>().add(
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
