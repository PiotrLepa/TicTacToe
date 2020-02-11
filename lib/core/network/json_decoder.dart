import 'package:built_collection/built_collection.dart';
import 'package:tictactoe/core/network/serializers.dart';

class JsonDecoder {
  dynamic decodeJson<T>(entity) {
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
