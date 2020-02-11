import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/serializer/response_handler.dart';

import '../network_constant.dart';

abstract class BaseNetworkService {
  // TODO implement DI
  Dio _dio = _createDio();
  ResponseHandler _responseHandler = ResponseHandler();

  static Dio _createDio() => Dio()..options.baseUrl = BASE_URL;

  Future<Response<T>> get<T>(String path) =>
      _responseHandler.decodeResponse(_dio.get(path));

  Future<Response<BuiltList<T>>> getList<T>(String path) =>
      _responseHandler.decodeResponseList(_dio.get(path));

  Future<Response<T>> post<T>(
    String path, {
    data,
    Map<String, dynamic> queryParameters,
  }) =>
      _responseHandler.decodeResponse(
          _dio.post(path, data: data, queryParameters: queryParameters));

  Future<Response<T>> put<T>(
    String path, {
    data,
    Map<String, dynamic> queryParameters,
  }) =>
      _responseHandler.decodeResponse(
          _dio.put(path, data: data, queryParameters: queryParameters));
}
