import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/data/serializer/response_converter.dart';
import 'package:tictactoe/core/data/service/base_network_service.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/data/model/game_response/game_response.dart';
import 'package:tictactoe/data/model/login_request/login_request.dart';
import 'package:tictactoe/data/model/login_response/login_response.dart';

@injectable
class NetworkService extends BaseNetworkService {
  NetworkService(
      @Named(defaultNetworkClient) Dio dio, ResponseConverter responseConverter)
      : super(dio, responseConverter);

  Future<Response<LoginResponse>> login(LoginRequest request) => post(
        "/oauth/token",
        data: request,
        contentType: Headers.formUrlEncodedContentType,
        headers: {authorizationHeader: basicKey},
      );

  Future<Response<BuiltList<GameResponse>>> getGames() =>
      getList("/game/results", secured: true);
}
