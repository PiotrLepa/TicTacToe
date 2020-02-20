// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:tictactoe/core/network/interceptor/connection_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/logger_interceptor.dart';
import 'package:tictactoe/core/network/serializer/response_converter.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tictactoe/core/network/service/network_service.dart';
import 'package:dio/src/dio.dart';
import 'package:tictactoe/core/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/core/network/interceptor/bearer_token_interceptor.dart';
import 'package:tictactoe/core/network/repository/refresh_token_repository.dart';
import 'package:tictactoe/core/network/repository/test_repository.dart';
import 'package:tictactoe/bloc/test_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  g.registerFactory<ConnectionInterceptor>(() => ConnectionInterceptor());
  g.registerFactory<LoggerInterceptor>(() => LoggerInterceptor());
  g.registerFactory<ResponseConverter>(() => ResponseConverter());
  g.registerLazySingleton<Dio>(() => Dio()
    ..options.baseUrl =
        "https://piotrlepa-tictactoe.herokuapp.com" // TODO library bug
    ..interceptors.add(g.get<BearerTokenInterceptor>()) // TODO better way?
    ..interceptors.add(g.get<LoggerInterceptor>())
    ..interceptors.add(g.get<ConnectionInterceptor>()));
  final sharedPreferences = await SharedPreferences.getInstance();
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerFactory<NetworkService>(() => NetworkService(
        g<Dio>(),
        g<ResponseConverter>(),
      ));
  g.registerFactory<OauthTokensStorage>(() => OauthTokensStorage(
        g<SharedPreferences>(),
      ));
  g.registerFactory<BearerTokenInterceptor>(() => BearerTokenInterceptor(
        g<OauthTokensStorage>(),
      ));
  g.registerFactory<RefreshTokenRepository>(() => RefreshTokenRepository(
        g<NetworkService>(),
      ));
  g.registerFactory<TestRepository>(() => TestRepository(
        g<NetworkService>(),
      ));
  g.registerFactory<TestBloc>(() => TestBloc(
        g<OauthTokensStorage>(),
        g<NetworkService>(),
        g<TestRepository>(),
      ));
}
