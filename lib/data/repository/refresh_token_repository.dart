import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/repository/network_repository.dart';
import 'package:tictactoe/data/model/login_response/login_response.dart';
import 'package:tictactoe/data/model/refresh_token_request/refresh_token_request.dart';
import 'package:tictactoe/data/service/refresh_token_network_service.dart';

@injectable
class RefreshTokenRepository extends NetworkRepository {
  final RefreshTokenNetworkService _service;

  RefreshTokenRepository(this._service);

  Future<LoginResponse> refreshAccessToken(RefreshTokenRequest request) =>
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
