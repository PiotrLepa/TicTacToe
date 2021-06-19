import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/interceptor/bearer_token_interceptor.dart';
import 'package:tictactoe/core/data/network/interceptor/connection_interceptor.dart';
import 'package:tictactoe/core/data/network/interceptor/language_interceptor.dart';
import 'package:tictactoe/core/data/network/interceptor/logger_interceptor.dart';
import 'package:tictactoe/core/data/network/interceptor/refresh_token_interceptor.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/injection/injection_names.dart';

@module
abstract class NetworkClient {
  @lazySingleton
  @Named(defaultNetworkClient)
  Dio get dioDefault => Dio()
    ..options.baseUrl = baseUrl
    ..interceptors.add(getIt.get<BearerTokenInterceptor>())
    ..interceptors.add(getIt.get<LanguageInterceptor>())
    ..interceptors.add(getIt.get<LoggerInterceptor>())
    ..interceptors.add(getIt.get<ConnectionInterceptor>())
    ..interceptors.add(getIt.get<RefreshTokenInterceptor>());

  @lazySingleton
  @Named(refreshTokenNetworkClient)
  Dio get dioRefreshToken => Dio()
    ..options.baseUrl = baseUrl
    ..interceptors.add(getIt.get<BearerTokenInterceptor>())
    ..interceptors.add(getIt.get<LanguageInterceptor>())
    ..interceptors.add(getIt.get<LoggerInterceptor>())
    ..interceptors.add(getIt.get<ConnectionInterceptor>());
}
