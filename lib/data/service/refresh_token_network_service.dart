import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/data/serializer/response_converter.dart';
import 'package:tictactoe/core/data/service/base_network_service.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/refresh_token_request/refresh_token_request_model.dart';

@lazySingleton
class RefreshTokenNetworkService extends BaseNetworkService {
  RefreshTokenNetworkService(@Named(refreshTokenNetworkClient) Dio dio,
      ResponseConverter responseConverter)
      : super(dio, responseConverter);

  Future<LoginResponseModel> refreshAccessToken(
    RefreshTokenRequestModel request,
  ) =>
      post(
        "/oauth/token",
        data: request,
        contentType: Headers.formUrlEncodedContentType,
        headers: {authorizationHeader: basicKey},
      );
}
