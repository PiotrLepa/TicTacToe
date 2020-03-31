import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_error_handler.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/refresh_token_request/refresh_token_request_model.dart';
import 'package:tictactoe/data/service/refresh_token_network_service.dart';

@lazySingleton
class RefreshTokenRepository {
  final RefreshTokenNetworkService _service;

  RefreshTokenRepository(this._service);

  Future<LoginResponseModel> refreshAccessToken(
    RefreshTokenRequestModel requestData,
  ) =>
      _service.refreshAccessToken(requestData).handleNetworkError();

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
    return request.then((value) => value.data).handleNetworkError();
  }
}
