import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/network_constant.dart';
import 'package:tictactoe/core/network/post.dart';
import 'package:tictactoe/core/network/serializers.dart';

class NetworkService {
  final _dio = Dio();

  Future<Response<String>> getPosts() {
    return _dio.get(BASE_URL + "/posts");
  }

  Future<Post> getPost() async {
    try {
      Response<String> response = await _dio.get(BASE_URL + "/posts/1");
      print("response: " + response.data);
      final post = await _decodeJson<Post>(response.data);
      return post;
    } catch (e) {
      print("getPost" + e.toString());
    }
  }

  T _deserialize<T>(dynamic value) {
    final serializer = serializers.serializerForType(T);
    final result = serializers.deserializeWith<T>(
      serializer,
      json.decode(value),
    );
    return result;
  }

  BuiltList<T> _deserializeListOf<T>(Iterable value) => BuiltList(
        value.map((value) => _deserialize<T>(value)).toList(growable: false),
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
