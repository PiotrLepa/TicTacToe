// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:tictactoe/core/injection/register_module.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tictactoe/core/internationalization/locale_provider.dart';
import 'package:tictactoe/core/network/interceptor/connection_interceptor.dart';
import 'package:tictactoe/core/network/interceptor/logger_interceptor.dart';
import 'package:tictactoe/core/network/serializer/response_converter.dart';
import 'package:tictactoe/core/network/service/network_service.dart';
import 'package:tictactoe/core/network/service/refresh_token_network_service.dart';
import 'package:tictactoe/core/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/core/network/interceptor/bearer_token_interceptor.dart';
import 'package:tictactoe/core/network/repository/refresh_token_repository.dart';
import 'package:tictactoe/core/network/repository/test_repository.dart';
import 'package:tictactoe/bloc/test_bloc.dart';
import 'package:tictactoe/core/network/interceptor/refresh_token_interceptor.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final networkClient = _$NetworkClient();
  g.registerLazySingleton<Dio>(() => networkClient.dioDefault,
      instanceName: 'defaultNetworkClient');
  g.registerLazySingleton<Dio>(() => networkClient.dioRefreshToken,
      instanceName: 'refreshTokenNetworkClient');
  final sharedPreferences = await networkClient.sharedPreferences;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerFactory<LocaleProvider>(() => LocaleProvider());
  g.registerFactory<ConnectionInterceptor>(() => ConnectionInterceptor());
  g.registerFactory<LoggerInterceptor>(() => LoggerInterceptor());
  g.registerFactory<ResponseConverter>(() => ResponseConverter());
  g.registerFactory<NetworkService>(() => NetworkService(
        g('defaultNetworkClient'),
        g<ResponseConverter>(),
      ));
  g.registerFactory<RefreshTokenNetworkService>(
      () => RefreshTokenNetworkService(
            g('refreshTokenNetworkClient'),
            g<ResponseConverter>(),
          ));
  g.registerFactory<OauthTokensStorage>(() => OauthTokensStorage(
        g<SharedPreferences>(),
      ));
  g.registerFactory<BearerTokenInterceptor>(() => BearerTokenInterceptor(
        g<OauthTokensStorage>(),
      ));
  g.registerFactory<RefreshTokenRepository>(() => RefreshTokenRepository(
        g<RefreshTokenNetworkService>(),
      ));
  g.registerFactory<TestRepository>(() => TestRepository(
        g<NetworkService>(),
      ));
  g.registerFactory<TestBloc>(() => TestBloc(
        g<OauthTokensStorage>(),
        g<NetworkService>(),
        g<TestRepository>(),
      ));
  g.registerFactory<RefreshTokenInterceptor>(() => RefreshTokenInterceptor(
        g<OauthTokensStorage>(),
        g<RefreshTokenRepository>(),
      ));
}

class _$NetworkClient extends NetworkClient {}
