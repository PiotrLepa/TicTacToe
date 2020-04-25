import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/common/serialization/json_factories.dart';
import 'package:tictactoe/core/extension/iterable_extension.dart';

typedef T JsonFactory<T>(Map<String, dynamic> json);

@lazySingleton
class ModelDecoder {
  dynamic decode<T>(data) {
    // TODO better way to check if T is void?
    if (T.toString() == "void") {
      return;
    } else if (data is Iterable) {
      return _decodeList<T>(data.toKtList());
    } else if (data is Map) {
      return _decodeMap<T>(data);
    } else {
      return data;
    }
  }

  KtList<T> _decodeList<T>(KtList values) =>
      values.filter((v) => v != null).map<T>((v) => decode<T>(v));

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = jsonFactories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      throw Exception(
          "Json factory for type $T not found. Check if class is added to json factories.");
    }
    return jsonFactory(values);
  }
}
