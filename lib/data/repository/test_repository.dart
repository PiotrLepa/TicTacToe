import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/repository/network_repository.dart';
import 'package:tictactoe/data/model/game_response/game_response.dart';
import 'package:tictactoe/data/model/login_request/login_request.dart';
import 'package:tictactoe/data/model/login_response/login_response.dart';
import 'package:tictactoe/data/service/network_service.dart';

@injectable
class TestRepository extends NetworkRepository {
  final NetworkService _service;

  TestRepository(this._service);

  Future<LoginResponse> login(LoginRequest request) =>
      call(_service.login(request));

  Future<BuiltList<GameResponse>> fetchGames() => call(_service.getGames());
}
