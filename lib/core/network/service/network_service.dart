import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/network/model/game_response.dart';
import 'package:tictactoe/core/network/model/post.dart';
import 'package:tictactoe/core/network/model/token/login_request.dart';
import 'package:tictactoe/core/network/model/token/refresh_token_request/refresh_token_request.dart';
import 'package:tictactoe/core/network/model/token/token_response.dart';
import 'package:tictactoe/core/network/network_constant.dart';
import 'package:tictactoe/core/network/serializer/response_converter.dart';

import 'base_network_service.dart';

@injectable
class NetworkService extends BaseNetworkService {
  final Dio _dio;
  final ResponseConverter _responseConverter;

  NetworkService(this._dio, this._responseConverter)
      : super(_dio, _responseConverter);

  Future<Response<TokenResponse>> login(LoginRequest request) =>
      post(
        "/oauth/token",
        data: request,
        contentType: Headers.formUrlEncodedContentType,
        headers: {authorizationHeader: basicKey},
      );

  Future<Response<TokenResponse>> refreshAccessToken(
      RefreshTokenRequest request,) =>
      post(
        "/oauth/token",
        data: request,
        contentType: Headers.formUrlEncodedContentType,
        headers: {authorizationHeader: basicKey},
      );

  Future<Response<BuiltList<Post>>> getPosts() => getList("/posts");

  Future<Response<Post>> getPost(int postId) => get("/posts/$postId");

  Future<Response<BuiltList<GameResponse>>> getGames() =>
      getList("/game/results", secured: true);
}
