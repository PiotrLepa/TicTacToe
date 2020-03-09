import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/repository/network_repository.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/refresh_token_request/refresh_token_request_model.dart';
import 'package:tictactoe/data/service/refresh_token_network_service.dart';

@injectable
class RefreshTokenRepository extends NetworkRepository {
  final RefreshTokenNetworkService _service;

  RefreshTokenRepository(this._service);

  Future<LoginResponseModel> refreshAccessToken(
          RefreshTokenRequestModel requestData) =>
      call(
        request: _service.refreshAccessToken(requestData),
        mapper: (data) => data,
      );

  Future retryRequest(RequestOptions requestData) {
    final request = _service.createRequest(
      requestData.method,
      requestData.path,
      data: requestData.data,
      queryParameters: requestData.queryParameters,
      headers: requestData.headers,
      contentType: requestData.contentType,
      secured: true,
    );
    return call(
      request: request,
      mapper: (model) => model,
    );
//    call(
//        _service.createRequest(
//          request.method,
//          request.path,
//          data: request.data,
//          queryParameters: request.queryParameters,
//          headers: request.headers,
//          contentType: request.contentType,
//          secured: true,
//        ),
//      );
  }
}
