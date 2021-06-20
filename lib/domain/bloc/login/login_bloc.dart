import 'package:auto_localized/auto_localized.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/core/domain/validation/validators.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/domain/entity/login_request/login_request.dart';
import 'package:tictactoe/domain/repository/login_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository _loginRepository;
  final OauthTokensStorage _oauthTokensStorage;
  final Validator _validator;
  final FirebaseMessaging _firebaseMessaging;

  LoginBloc(
    this._loginRepository,
    this._oauthTokensStorage,
    this._validator,
    this._firebaseMessaging,
  ) : super(const LoginState.nothing());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is Login) {
      yield* _mapLoginEvent(event);
    }
  }

  Stream<LoginState> _mapLoginEvent(Login event) async* {
    final emailValidation = _validator.validateEmail(event.email);
    final passwordValidation = _validator.validatePassword(event.password);
    if (emailValidation != null || passwordValidation != null) {
      yield LoginState.renderInputsErrors(
        emailError: emailValidation,
        passwordError: passwordValidation,
      );
    } else {
      yield* _login(event.email, event.password);
    }
  }

  Stream<LoginState> _login(String email, String password) async* {
    final deviceToken = await _getDeviceToken();
    if (deviceToken == null) {
      yield const LoginState.error(Strings.apiErrorUnknown);
      return;
    }
    final entity = LoginRequest(
      email: email,
      password: password,
      grantType: oauthGrantTypePassword,
      deviceToken: deviceToken,
    );
    final request = fetch(_loginRepository.login(entity));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
          yield const LoginState.loading();
        },
        success: (response) async* {
          _oauthTokensStorage.saveTokens(
            response.accessToken,
            response.refreshToken,
          );
          yield const LoginState.navigateToHome();
        },
        error: (errorMessage) async* {
          yield LoginState.error(errorMessage);
        },
      );
    }
  }

  Future<String?> _getDeviceToken() async {
    return _firebaseMessaging
        .getToken()
        .catchError((dynamic _) => Future.value(null));
  }
}
