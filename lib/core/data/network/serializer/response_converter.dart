import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/data/network/serializer/json_factories.dart';
import 'package:tictactoe/core/extension/iterable_extension.dart';

typedef T JsonFactory<T>(Map<String, dynamic> json);

@lazySingleton
class ResponseConverter {
  Future<T> decodeResponse<T>(
    Future<Response> futureResponse,
  ) async {
    final response = await futureResponse;
    return _decodeJson<T>(response.data);
  }

  Future<KtList<T>> decodeResponseList<T>(
    Future<Response> futureResponse,
  ) async {
    final response = await futureResponse;
    return _decodeJson<T>(response.data);
  }

  dynamic _decodeJson<T>(entity) {
    if (T.toString() == "void") {
      // TOOO better way to check if T is void?
      return;
    } else if (entity is Iterable) {
      return _decodeList<T>(entity.toKtList());
    } else if (entity is Map) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  KtList<T> _decodeList<T>(KtList values) =>
      values.filter((v) => v != null).map<T>((v) => _decodeJson<T>(v));

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = jsonFactories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      throw Exception(
          "Json factory for type $T not found. Check if class is added to json factories.");
    }
    return jsonFactory(values);
  }
}
