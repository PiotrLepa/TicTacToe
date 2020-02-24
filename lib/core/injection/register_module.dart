import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/core/network/interceptor/bearer_token_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/connection_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/logger_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/refresh_token_interceptor.dart';
import 'package:tictactoe/core/network/network_constant.dart';

@registerModule
abstract class NetworkClient {
  @lazySingleton
  @Named(defaultNetworkClient)
  Dio get dioDefault => Dio()
    ..options.baseUrl =
        baseUrl // TODO library bug? generated file doesn't import base url from network constant file
    ..interceptors.add(getIt.get<BearerTokenInterceptor>()) // TODO better way?
    ..interceptors.add(getIt.get<LoggerInterceptor>())
    ..interceptors.add(getIt.get<ConnectionInterceptor>())
    ..interceptors.add(getIt.get<RefreshTokenInterceptor>());

  @lazySingleton
  @Named(refreshTokenNetworkClient)
  Dio get dioRefreshToken =>
      Dio()
        ..options.baseUrl = baseUrl
        ..interceptors.add(getIt.get<BearerTokenInterceptor>())
        ..interceptors.add(getIt.get<LoggerInterceptor>())
        ..interceptors.add(getIt.get<ConnectionInterceptor>());

  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
