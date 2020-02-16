import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/bloc/test_event.dart';
import 'package:tictactoe/bloc/test_state.dart';
import 'package:tictactoe/core/error/error_translator.dart';
import 'package:tictactoe/core/network/exception/api_exception.dart';
import 'package:tictactoe/core/network/model/token/login_request.dart';
import 'package:tictactoe/core/network/repository/test_repository.dart';
import 'package:tictactoe/core/network/service/network_service.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  @override
  TestState get initialState => TestState.progress();

  @override
  Stream<TestState> mapEventToState(TestEvent event) async* {
    yield* event.when(
      login: () => _login(),
      fetchGames: () => _fetchGamesSecured(),
    );
  }

  Future<String> _fetchAllPosts() async {
    try {
      final posts = await NetworkService().getPosts();
      return posts.data.map((post) => post.title).join("\n\n");
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  Future<String> _fetchPost() async {
    try {
      final post = await NetworkService().getPost(1);
      return post.data.title;
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  Stream<TestState> _fetchGamesSecured() async* {
    try {
      yield TestState.progress();
      final games = await TestRepository().fetchGames();
      final string = games.map((post) => post).join("\n\n");
      yield TestState.success(string);
    } on ApiException catch (e) {
      print(e);
      final errorMessage = ErrorTranslator().translate(e);
      yield TestState.error(errorMessage);
    }
  }

  Stream<TestState> _login() async* {
    final request = LoginRequest(
      email: "piotrlepadev@gmail.com",
      password: "dev12",
      grantType: "password",
    );
    try {
      yield TestState.progress();
      final response = await TestRepository().login(request);
      yield TestState.success(response.toString());
    } catch (e) {
      print(e);
      final errorMessage = ErrorTranslator().translate(e);
      yield TestState.error(errorMessage);
    }
  }
}
