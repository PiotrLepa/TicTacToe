import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/model/game_response.dart';
import 'package:tictactoe/core/network/model/post.dart';
import 'package:tictactoe/core/network/model/token/login_request.dart';
import 'package:tictactoe/core/network/model/token/refresh_token_request/refresh_token_request.dart';
import 'package:tictactoe/core/network/model/token/token_response.dart';
import 'package:tictactoe/core/network/network_constant.dart';

import 'base_network_service.dart';

class NetworkService extends BaseNetworkService {
  Future<Response<TokenResponse>> login(LoginRequest request) => post(
        "/oauth/token",
        data: request,
        contentType: Headers.formUrlEncodedContentType,
        headers: {authorizationHeader: basicKey},
      );

  Future<Response<TokenResponse>> refreshAccessToken(
          RefreshTokenRequest request) =>
      post(
        "/oauth/token#refresh",
        data: request,
        contentType: Headers.formUrlEncodedContentType,
        headers: {authorizationHeader: basicKey},
      );

  Future<Response<BuiltList<Post>>> getPosts() => getList("/posts");

  Future<Response<Post>> getPost(int postId) => get("/posts/$postId");

  Future<Response<BuiltList<GameResponse>>> getGames() =>
      getList("/game/results", secured: true);
}
