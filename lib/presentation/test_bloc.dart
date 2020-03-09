import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/presentation/bloc_helper.dart';
import 'package:tictactoe/core/util/oauth_tokens_storage.dart';
import 'package:tictactoe/data/model/login_request/login_request_model.dart';
import 'package:tictactoe/data/repository/test_repository.dart';
import 'package:tictactoe/presentation/test_event.dart';
import 'package:tictactoe/presentation/test_state.dart';

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
    yield* fetch(_testRepository.fetchGames()).map(
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
    final request = LoginRequestModel(
      email: "piotrlepadev@gmail.com",
      password: "dev12",
      grantType: oauthGrantTypePassword,
    );
    yield* fetch(_testRepository.login(request)).map(
          (state) =>
          state.map(
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
    final request = LoginRequestModel(
      email: "312312",
      password: "312321",
      grantType: oauthGrantTypePassword,
    );
    yield* fetch(_testRepository.login(request)).map(
          (state) =>
          state.map(
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
