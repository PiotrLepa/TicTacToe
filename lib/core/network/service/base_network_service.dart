import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/serializer/json_factories.dart';
import 'package:tictactoe/core/network/serializer/response_converter.dart';

import '../network_constant.dart';

abstract class BaseNetworkService {
  // TODO implement DI
  Dio dio = _createDio();
  ResponseConverter _responseConverter = ResponseConverter(jsonFactories);

  static Dio _createDio() => Dio()..options.baseUrl = BASE_URL;

  Future<Response<T>> get<T>(String path) =>
      _responseConverter.decodeResponse(dio.get(path));

  Future<Response<BuiltList<T>>> getList<T>(String path) =>
      _responseConverter.decodeResponseList(dio.get(path));

  Future<Response<T>> post<T>(
    String path, {
    data,
    Map<String, dynamic> queryParameters,
  }) =>
      _responseConverter.decodeResponse(
          dio.post(path, data: data, queryParameters: queryParameters));

  Future<Response<T>> put<T>(
    String path, {
    data,
    Map<String, dynamic> queryParameters,
  }) =>
      _responseConverter.decodeResponse(
          dio.put(path, data: data, queryParameters: queryParameters));
}
