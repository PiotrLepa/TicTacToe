import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/common/enum_helper.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/data/serializer/response_converter.dart';
import 'package:tictactoe/core/data/service/base_network_service.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/data/model/game_response/game_response_model.dart';
import 'package:tictactoe/data/model/game_result_response/game_result_response_model.dart';
import 'package:tictactoe/data/model/login_request/login_request_model.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/registration_request/registration_request_model.dart';
import 'package:tictactoe/data/model/registration_response/registration_response_model.dart';

@lazySingleton
class NetworkService extends BaseNetworkService {
  NetworkService(
    @Named(defaultNetworkClient) Dio dio,
    ResponseConverter responseConverter,
  ) : super(dio, responseConverter);

  Future<LoginResponseModel> login(
    LoginRequestModel request,
  ) =>
      post(
        "/oauth/token",
        data: request,
        contentType: Headers.formUrlEncodedContentType,
        headers: {authorizationHeader: basicKey},
      );

  Future<RegistrationResponseModel> register(
    RegistrationRequestModel request,
  ) =>
      post(
        "/user/register",
        data: request,
      );

  Future<GameResponseModel> createGame(
    DifficultyLevelModel difficultyLevel,
  ) =>
      post(
        "/game/create",
        queryParameters: {
          "difficulty_level": enumToString(difficultyLevel),
        },
        secured: true,
      );

  Future<GameResponseModel> setMove(
    int gameId,
    int fieldIndex,
  ) =>
      put(
        "/game/$gameId/move/$fieldIndex",
        secured: true,
      );

  Future<KtList<GameResultResponseModel>> getUserGameResults() => getList(
        "/game/user-results",
        secured: true,
      );

  Future<KtList<GameResultResponseModel>> getAllGameResults() => getList(
        "/game/all-results",
        secured: true,
      );
}
