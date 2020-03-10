import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/repository/network_repository.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/refresh_token_request/refresh_token_request_model.dart';
import 'package:tictactoe/data/service/refresh_token_network_service.dart';

@injectable
class RefreshTokenRepository extends NetworkRepository {
  final RefreshTokenNetworkService _service;
  final Dio _dio;

  RefreshTokenRepository(
      this._service, @Named(refreshTokenNetworkClient) this._dio);

  Future<LoginResponseModel> refreshAccessToken(
          RefreshTokenRequestModel requestData) =>
      call(
        request: _service.refreshAccessToken(requestData),
        mapper: (data) => data,
      );

  Future retryRequest(RequestOptions requestData) {
    final request = _dio.request(
      requestData.path,
      data: requestData.data,
      queryParameters: requestData.queryParameters,
      options: Options(
        method: requestData.method,
        headers: requestData.headers,
        contentType: requestData.contentType,
      ),
    );
    return call(
      request: request,
      mapper: (model) => model,
    );
  }
}
