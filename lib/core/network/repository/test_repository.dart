import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/network/model/game_response.dart';
import 'package:tictactoe/core/network/model/token/login_request.dart';
import 'package:tictactoe/core/network/model/token/token_response.dart';
import 'package:tictactoe/core/network/repository/network_repository.dart';
import 'package:tictactoe/core/network/service/network_service.dart';

@injectable
class TestRepository extends NetworkRepository {
  final NetworkService _service;

  TestRepository(this._service);

  Future<TokenResponse> login(LoginRequest request) =>
      call(_service.login(request));

  Future<BuiltList<GameResponse>> fetchGames() => call(_service.getGames());
}
