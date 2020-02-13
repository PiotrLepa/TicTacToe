import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/interceptor/bearer_token_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/connection_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/error_interceptor.dart';
import 'package:tictactoe/core/network/serializer/response_converter.dart';
import 'package:tictactoe/core/network/serializer/serializable.dart';

import '../network_constant.dart';

abstract class BaseNetworkService {
  // TODO implement DI
  Dio dio = _createDio();
  ResponseConverter _responseConverter = ResponseConverter();

  static Dio _createDio() => Dio()
    ..options.baseUrl = baseUrl
    ..interceptors.add(ConnectionInterceptor())
    ..interceptors.add(BearerTokenInterceptor())
    ..interceptors.add(ErrorInterceptor());

  Future<Response<T>> get<T>(
    String path, {
    Serializable data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
    String contentType,
    bool secured = false,
  }) =>
      _responseConverter.decodeResponse(createRequest(
        "GET",
        path,
        data: data,
        queryParameters: queryParameters,
        headers: headers,
        contentType: contentType,
        secured: secured,
      ));

  Future<Response<BuiltList<T>>> getList<T>(
    String path, {
    Serializable data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
    String contentType,
    bool secured = false,
  }) =>
      _responseConverter.decodeResponseList(createRequest(
        "GET",
        path,
        data: data,
        queryParameters: queryParameters,
        headers: headers,
        contentType: contentType,
        secured: secured,
      ));

  Future<Response<T>> post<T>(
    String path, {
    Serializable data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
    String contentType,
    bool secured = false,
  }) =>
      _responseConverter.decodeResponse(createRequest(
        "POST",
        path,
        data: data,
        queryParameters: queryParameters,
        headers: headers,
        contentType: contentType,
        secured: secured,
      ));

  Future<Response<T>> put<T>(
    String path, {
    Serializable data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
    String contentType,
    bool secured = false,
  }) =>
      _responseConverter.decodeResponse(createRequest(
        "PUT",
        path,
        data: data,
        queryParameters: queryParameters,
        headers: headers,
        contentType: contentType,
        secured: secured,
      ));

  Future<Response<T>> createRequest<T>(
    String method,
    String path, {
    Serializable data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
    String contentType,
    bool secured = false,
  }) =>
      dio.request(path,
          data: data?.toJson(),
          queryParameters: queryParameters,
          options: Options(
            method: method,
            headers: _addSecuredHeader(headers ?? {}, secured),
            contentType: contentType,
          ));

  Map<String, dynamic> _addSecuredHeader(
      Map<String, dynamic> headers, bool secured) {
    headers[securedHeader] = secured;
    return headers;
  }
}
