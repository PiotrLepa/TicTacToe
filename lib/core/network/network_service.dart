import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/network_constant.dart';
import 'package:tictactoe/core/network/post.dart';
import 'package:tictactoe/core/network/serializers.dart';

class NetworkService {
  final _dio = Dio();

  Future<BuiltList<Post>> getPosts() async {
    try {
      final response = await _dio.get(BASE_URL + "/posts");
      return await _decodeJson<Post>(response.data);
    } catch (e) {
      print("getPost" + e.toString());
    }
  }

  Future<Post> getPost() async {
    try {
      final response = await _dio.get(BASE_URL + "/posts/1");
      return await _decodeJson<Post>(response.data);
    } catch (e) {
      print("getPost" + e.toString());
    }
  }

  T _deserialize<T>(dynamic value) => serializers.deserializeWith<T>(
        serializers.serializerForType(T),
        value,
      );

  BuiltList<T> _deserializeListOf<T>(Iterable list) => BuiltList(
        list.map((value) => _deserialize<T>(value)).toList(growable: false),
      );

  dynamic _decodeJson<T>(entity) {
    if (entity is T) return entity;

    try {
      if (entity is List) return _deserializeListOf<T>(entity);
      return _deserialize<T>(entity);
    } catch (e) {
      print("_decode" + e);
      return null;
    }
  }
}
