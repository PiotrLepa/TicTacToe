import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/core/network/model/token/refresh_token_request/refresh_token_request.dart';
import 'package:tictactoe/core/network/model/token/token_response.dart';
import 'package:tictactoe/core/network/network_constant.dart';
import 'package:tictactoe/core/network/serializer/response_converter.dart';

import 'base_network_service.dart';

@injectable
class RefreshTokenNetworkService extends BaseNetworkService {
  final Dio _dio;
  final ResponseConverter _responseConverter;

  RefreshTokenNetworkService(
      @Named(refreshTokenNetworkClient) this._dio, this._responseConverter)
      : super(_dio, _responseConverter);

  Future<Response<TokenResponse>> refreshAccessToken(
    RefreshTokenRequest request,
  ) =>
      post(
        "/oauth/token",
        data: request,
        contentType: Headers.formUrlEncodedContentType,
        headers: {authorizationHeader: basicKey},
      );
}
