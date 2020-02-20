import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/network/interceptor/bearer_token_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/connection_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/logger_interceptor.dart';

@registerModule
abstract class NetworkClient {
  @lazySingleton
//  @Named(defaultNetworkClient) // TODO
  Dio get dioDefault => Dio()
    ..options.baseUrl =
        "https://piotrlepa-tictactoe.herokuapp.com" // TODO library bug
    ..interceptors.add(g.get<BearerTokenInterceptor>()) // TODO better way?
    ..interceptors.add(g.get<LoggerInterceptor>())
    ..interceptors.add(g.get<ConnectionInterceptor>());

//    ..interceptors.add(getIt.get<RefreshTokenInterceptor>());

//  @lazySingleton
//  @Named(refreshTokenNetworkClient)
//  Dio get dioRefreshToken => Dio()
//    ..options.baseUrl = baseUrl
//    ..interceptors.add(getIt.get<BearerTokenInterceptor>())
//    ..interceptors.add(getIt.get<LoggerInterceptor>())
//    ..interceptors.add(getIt.get<ConnectionInterceptor>());

  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
