import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/network/model/token/refresh_token_request/refresh_token_request.dart';
import 'package:tictactoe/core/network/model/token/token_response.dart';
import 'package:tictactoe/core/network/repository/network_repository.dart';
import 'package:tictactoe/core/network/service/network_service.dart';

@injectable
class RefreshTokenRepository extends NetworkRepository {
  final NetworkService _service;

  RefreshTokenRepository(this._service);

  Future<TokenResponse> refreshAccessToken(RefreshTokenRequest request) =>
      call(_service.refreshAccessToken(request));

  Future retryRequest(RequestOptions request) => call(
        _service.createRequest(
          request.method,
          request.path,
          data: request.data,
          queryParameters: request.queryParameters,
          headers: request.headers,
          contentType: request.contentType,
          secured: true,
        ),
      );
}
