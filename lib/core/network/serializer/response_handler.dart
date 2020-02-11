import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/serializer/serializers.dart';

class ResponseHandler {
  Future<Response<T>> decodeResponse<T>(Future<Response> futureResponse) async {
    final response = await futureResponse;
    final data = await _decodeJson<T>(response.data);
    return createResponse<T>(data, response);
  }

  Future<Response<BuiltList<T>>> decodeResponseList<T>(
      Future<Response> futureResponse) async {
    final response = await futureResponse;
    final data = await _decodeJson<T>(response.data);
    return createResponse<BuiltList<T>>(data, response);
  }

  Future<Response<T>> createResponse<T>(T data, Response response) async =>
      Response<T>(
          data: data,
          headers: response.headers,
          request: response.request,
          isRedirect: response.isRedirect,
          statusCode: response.statusCode,
          statusMessage: response.statusMessage,
          redirects: response.redirects,
          extra: response.extra);

  dynamic _decodeJson<T>(entity) {
    if (entity is List) return _deserializeListOf<T>(entity);
    return _deserialize<T>(entity);
  }

  T _deserialize<T>(dynamic value) => serializers.deserializeWith<T>(
        serializers.serializerForType(T),
        value,
      );

  BuiltList<T> _deserializeListOf<T>(Iterable list) => BuiltList(
        list.map((value) => _deserialize<T>(value)).toList(growable: false),
      );
}
