import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/presentation/validation/validators.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginState.nothing(
        usernameErrorKey: null,
        passwordErrorKey: null,
      );

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is Login) {
      yield* _mapLoginEvent(event);
    }
  }

  Stream<LoginState> _mapLoginEvent(Login event) async* {
    final usernameValidation = Validators.validateUsername(event.username);
    final passwordValidation = Validators.validatePassword(event.password);
    if (usernameValidation != null || passwordValidation != null) {
      yield LoginState.renderInputError(
        usernameErrorKey: usernameValidation,
        passwordErrorKey: passwordValidation,
      );
    } else {}
  }
}
