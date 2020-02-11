import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/post.dart';

import 'base_network_service.dart';

class NetworkService extends BaseNetworkService {
  Future<Response<BuiltList<Post>>> getPosts() async => getList("/posts");

  Future<Response<Post>> getPost(int postId) async => get("/posts/$postId");
}
