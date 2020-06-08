import 'package:dio/dio.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/common/serialization/serializable.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/data/network/serializer/response_converter.dart';

abstract class BaseNetworkService {
  final Dio _dio;
  final ResponseConverter _responseConverter;

  BaseNetworkService(
    this._dio,
    this._responseConverter,
  );

  Future<T> get<T>(
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

  Future<KtList<T>> getList<T>(
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

  Future<T> post<T>(
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

  Future<T> put<T>(
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
  }) async =>
      _dio.request(path,
          data: data?.toJson(),
          queryParameters: queryParameters,
          options: Options(
            method: method,
            headers: _addSecuredHeader(headers ?? {}, secured),
            contentType: contentType,
          ));

  Map<String, dynamic> _addSecuredHeader(
      Map<String, dynamic> headers, bool secured) {
    headers[securedHeaderKey] = secured;
    return headers;
  }
}
