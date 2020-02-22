import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/core/network/interceptor/bearer_token_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/connection_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/logger_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/refresh_token_interceptor.dart';

@registerModule
abstract class NetworkClient {
  @lazySingleton
  @Named(defaultNetworkClient)
  Dio get dioDefault => Dio()
    ..options.baseUrl =
        "https://piotrlepa-tictactoe.herokuapp.com" // TODO library bug? generated file doesn't import base url from network constant file
    ..interceptors.add(g.get<BearerTokenInterceptor>()) // TODO better way?
    ..interceptors.add(g.get<LoggerInterceptor>())
    ..interceptors.add(g.get<ConnectionInterceptor>())
    ..interceptors.add(g.get<RefreshTokenInterceptor>());

  @lazySingleton
  @Named(refreshTokenNetworkClient)
  Dio get dioRefreshToken => Dio()
    ..options.baseUrl = "https://piotrlepa-tictactoe.herokuapp.com"
    ..interceptors.add(g.get<BearerTokenInterceptor>())
    ..interceptors.add(g.get<LoggerInterceptor>())
    ..interceptors.add(g.get<ConnectionInterceptor>());

  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
