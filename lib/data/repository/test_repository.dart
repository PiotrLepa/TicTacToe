import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/exception/api_exception.dart';
import 'package:tictactoe/core/data/repository/network_repository.dart';
import 'package:tictactoe/data/model/game_response/game_response_model.dart';
import 'package:tictactoe/data/model/login_request/login_request_model.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/service/network_service.dart';

@injectable
class TestRepository extends NetworkRepository {
  final NetworkService _service;

  TestRepository(this._service);

  Future<LoginResponseModel> login(LoginRequestModel request) {
//    return call(_service.login(request));
    // TODO
    return Future.error(ApiException.unknownError(400, null));
  }

  Future<BuiltList<GameResponseModel>> fetchGames() {
//    return call(_service.getGames());
    // TODO
    return Future.error(ApiException.unknownError(400, null));
  }
}
