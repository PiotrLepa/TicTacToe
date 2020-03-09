import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/data/serializer/response_converter.dart';
import 'package:tictactoe/core/data/service/base_network_service.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/data/model/game_response/game_response_model.dart';
import 'package:tictactoe/data/model/login_request/login_request_model.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';

@injectable
class NetworkService extends BaseNetworkService {
  NetworkService(
      @Named(defaultNetworkClient) Dio dio, ResponseConverter responseConverter)
      : super(dio, responseConverter);

  Future<Response<LoginResponseModel>> login(LoginRequestModel request) => post(
        "/oauth/token",
        data: request,
        contentType: Headers.formUrlEncodedContentType,
        headers: {authorizationHeader: basicKey},
      );

  Future<Response<GameResponseModel>> createGame(
    DifficultyLevelModel difficultyLevel,
  ) =>
      post(
        "/game/create",
        queryParameters: {
          "difficulty_level": difficultyLevel,
        },
        secured: true,
      );

  Future<Response<BuiltList<GameResponseModel>>> getGames() =>
      getList("/game/results", secured: true);
}
