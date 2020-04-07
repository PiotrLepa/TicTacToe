import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/common/router/router.gr.dart';
import 'package:tictactoe/core/common/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/core/presentation/validation/validators.dart';
import 'package:tictactoe/domain/entity/login_request/login_request.dart';
import 'package:tictactoe/domain/repository/login_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository _loginRepository;
  final OauthTokensStorage _oauthTokensStorage;

  LoginBloc(
    this._loginRepository,
    this._oauthTokensStorage,
  );

  @override
  LoginState get initialState => LoginState.nothing(
        emailErrorKey: null,
        passwordErrorKey: null,
      );

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is Login) {
      yield* _mapLoginEvent(event);
    }
  }

  Stream<LoginState> _mapLoginEvent(Login event) async* {
    final emailValidation = Validators.validateEmail(event.email);
    final passwordValidation = Validators.validatePassword(event.password);
    if (emailValidation != null || passwordValidation != null) {
      yield LoginState.renderInputsErrors(
        emailErrorKey: emailValidation,
        passwordErrorKey: passwordValidation,
      );
    } else {
      yield* _login(event.email, event.password);
    }
  }

  Stream<LoginState> _login(String email, String password) async* {
    final entity = LoginRequest(
      email: email,
      password: password,
      grantType: oauthGrantTypePassword,
    );
    final request = fetch(_loginRepository.login(entity));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
          yield LoginState.loading();
        },
        success: (response) async* {
          _oauthTokensStorage.saveTokens(
            response.accessToken,
            response.refreshToken,
          );
          _navigateToHome();
        },
        error: (errorMessage) async* {
          yield LoginState.error(errorMessage);
        },
      );
    }
  }

  void _navigateToHome() {
    ExtendedNavigator.ofRouter<Router>().pushNamedAndRemoveUntil(
      Routes.homeScreen,
          (route) => false,
    );
  }
}
