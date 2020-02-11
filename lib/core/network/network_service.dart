import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/json_decoder.dart';
import 'package:tictactoe/core/network/network_constant.dart';
import 'package:tictactoe/core/network/post.dart';

class NetworkService {
  // TODO implement DI
  Dio _dio = _createDio();

  JsonDecoder _jsonDecoder = JsonDecoder();

  static Dio _createDio() => Dio()..options.baseUrl = BASE_URL;

  Future<Response<BuiltList<Post>>> getPosts() async =>
      decodeJsonList<Post>(_dio.get("/posts"));

  Future<Response<Post>> getPost() async => decodeJson(_dio.get("/posts/1"));

  Future<Response<T>> decodeJson<T>(Future<Response> futureResponse) async {
    final response = await futureResponse;
    return Response<T>(
        data: await _jsonDecoder.decodeJson<T>(response.data),
        headers: response.headers,
        request: response.request,
        isRedirect: response.isRedirect,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        redirects: response.redirects,
        extra: response.extra);
  }

  Future<Response<BuiltList<T>>> decodeJsonList<T>(
      Future<Response> futureResponse) async {
    final response = await futureResponse;
    return Response<BuiltList<T>>(
        data: await _jsonDecoder.decodeJson<T>(response.data),
        headers: response.headers,
        request: response.request,
        isRedirect: response.isRedirect,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        redirects: response.redirects,
        extra: response.extra);
  }
}
