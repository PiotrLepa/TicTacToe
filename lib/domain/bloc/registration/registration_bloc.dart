import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/core/presentation/validation/validators.dart';
import 'package:tictactoe/domain/entity/reqistration_request/registration_request.dart';
import 'package:tictactoe/domain/repository/registration_repository.dart';
import 'package:tictactoe/presentation/router/router.gr.dart';

part 'registration_bloc.freezed.dart';
part 'registration_event.dart';
part 'registration_state.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationRepository _registrationRepository;

  RegistrationBloc(this._registrationRepository);

  @override
  RegistrationState get initialState => RegistrationState.nothing();

  @override
  Stream<RegistrationState> mapEventToState(
    RegistrationEvent event,
  ) async* {
    if (event is Register) {
      yield* _mapRegisterEvent(event);
    }
  }

  Stream<RegistrationState> _mapRegisterEvent(Register event) async* {
    final emailValidation = Validators.validateEmail(event.email);
    final usernameValidation = Validators.validateUsername(event.username);
    final passwordValidation = Validators.validatePassword(event.password);
    final repeatedPasswordValidation =
    Validators.validatePassword(event.repeatedPassword);
    yield RegistrationState.renderInputsErrors(
      usernameError: usernameValidation,
      emailError: emailValidation,
      passwordError: passwordValidation,
      repeatedPasswordError: repeatedPasswordValidation,
    );
    if (usernameValidation == null &&
        emailValidation == null &&
        passwordValidation == null &&
        repeatedPasswordValidation == null) {
      final entity = RegistrationRequest(
        email: event.email,
        username: event.username,
        password: event.password,
        repeatedPassword: event.repeatedPassword,
      );
      yield* _register(entity);
    }
  }

  Stream<RegistrationState> _register(RegistrationRequest entity) async* {
    final request = fetch(_registrationRepository.register(entity));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
          yield RegistrationState.loading();
        },
        success: (response) async* {
          yield RegistrationState.showSuccessFlushbar();
          _navigateToLogin();
        },
        error: (errorMessage) async* {
          yield RegistrationState.error(errorMessage);
        },
      );
    }
  }

  void _navigateToLogin() async {
    ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.loginScreen);
  }
}
