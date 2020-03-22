import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/serializer/json_factories.dart';

typedef T JsonFactory<T>(Map<String, dynamic> json);

@lazySingleton
class ResponseConverter {
  Future<T> decodeResponse<T>(Future<Response> futureResponse) async {
    final response = await futureResponse;
    final data = _decodeJson<T>(response.data);
    return data;
  }

  Future<BuiltList<T>> decodeResponseList<T>(
      Future<Response> futureResponse) async {
    final response = await futureResponse;
    final data = _decodeJson<T>(response.data);
    return BuiltList<T>(data);
  }

  dynamic _decodeJson<T>(entity) {
    if (entity is Iterable) return _decodeList<T>(entity);

    if (entity is Map) return _decodeMap<T>(entity);

    return entity;
  }

  List<T> _decodeList<T>(List values) =>
      values.where((v) => v != null).map<T>((v) => _decodeJson<T>(v)).toList();

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = jsonFactories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      throw Exception(
          "Json factory for type $T not found. Check if class is added to converters.");
    }
    return jsonFactory(values);
  }
}
