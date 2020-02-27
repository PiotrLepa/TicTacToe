import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/bloc/test_event.dart';
import 'package:tictactoe/bloc/test_state.dart';
import 'package:tictactoe/core/future_dispatch.dart';
import 'package:tictactoe/core/network/model/token/login_request.dart';
import 'package:tictactoe/core/network/network_constant.dart';
import 'package:tictactoe/core/network/repository/test_repository.dart';
import 'package:tictactoe/core/storage/oauth_tokens_storage.dart';

@injectable
class TestBloc extends Bloc<TestEvent, TestState> {
  final OauthTokensStorage _oauthTokensStorage;
  final TestRepository _testRepository;

  TestBloc(this._oauthTokensStorage, this._testRepository);

  @override
  TestState get initialState => TestState.initial();

  @override
  Stream<TestState> mapEventToState(TestEvent event) async* {
    yield* event.when(
      login: () => _login(),
      fetchGames: () => _fetchGamesSecured(),
      makeError: () => _makeError(),
    );
  }

  Stream<TestState> _fetchGamesSecured() async* {
    yield* dispatch(_testRepository.fetchGames()).map(
      (state) => state.map(
        progress: (_) => TestState.progress(),
        success: (success) {
          final string = success.result.map((post) => post).join("\n\n");
          return TestState.success(string);
        },
        error: (error) => TestState.error(error.errorMessage),
      ),
    );
  }

  Stream<TestState> _login() async* {
    final request = LoginRequest(
      email: "piotrlepadev@gmail.com",
      password: "dev12",
      grantType: oauthGrantTypePassword,
    );
    yield* dispatch(_testRepository.login(request)).map(
      (state) => state.map(
        progress: (_) => TestState.progress(),
        success: (success) {
          final tokens = success.result;
          _oauthTokensStorage.saveTokens(
            tokens.accessToken,
            tokens.refreshToken,
          );
          return TestState.success(tokens.toString());
        },
        error: (error) => TestState.error(error.errorMessage),
      ),
    );
  }

  Stream<TestState> _makeError() async* {
    final request = LoginRequest(
      email: "312312",
      password: "312321",
      grantType: oauthGrantTypePassword,
    );
    yield* dispatch(_testRepository.login(request)).map(
      (state) => state.map(
        progress: (_) => TestState.progress(),
        success: (success) {
          final tokens = success.result;
          _oauthTokensStorage.saveTokens(
            tokens.accessToken,
            tokens.refreshToken,
          );
          return TestState.success(tokens.toString());
        },
        error: (error) => TestState.error(error.errorMessage),
      ),
    );
  }
}
