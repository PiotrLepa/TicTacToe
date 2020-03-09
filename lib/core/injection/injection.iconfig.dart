// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:tictactoe/core/data/network/interceptor/connection_interceptor.dart';
import 'package:tictactoe/core/data/network/interceptor/logger_interceptor.dart';
import 'package:tictactoe/core/data/serializer/response_converter.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/injection/register_module.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tictactoe/core/presentation/error/error_translator.dart';
import 'package:tictactoe/core/util/locale_provider.dart';
import 'package:tictactoe/core/util/oauth_tokens_storage.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/data/service/refresh_token_network_service.dart';
import 'package:tictactoe/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:tictactoe/presentation/bloc/start_game/start_game_bloc.dart';
import 'package:tictactoe/data/mapper/entity/difficilty_level_entity_mapper.dart';
import 'package:tictactoe/data/mapper/model/difficilty_level_model_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_status_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_mark_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_move_entity_mapper.dart';
import 'package:tictactoe/core/data/network/interceptor/bearer_token_interceptor.dart';
import 'package:tictactoe/core/data/network/interceptor/language_interceptor.dart';
import 'package:tictactoe/data/repository/refresh_token_repository.dart';
import 'package:tictactoe/data/repository/test_repository.dart';
import 'package:tictactoe/presentation/test_bloc.dart';
import 'package:tictactoe/data/mapper/entity/game_response_entity_mapper.dart';
import 'package:tictactoe/core/data/network/interceptor/refresh_token_interceptor.dart';
import 'package:tictactoe/data/repository/create_game_repository_impl.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final networkClient = _$NetworkClient();
  g.registerFactory<ConnectionInterceptor>(() => ConnectionInterceptor());
  g.registerFactory<LoggerInterceptor>(() => LoggerInterceptor());
  g.registerFactory<ResponseConverter>(() => ResponseConverter());
  g.registerLazySingleton<Dio>(() => networkClient.dioDefault,
      instanceName: 'defaultNetworkClient');
  g.registerLazySingleton<Dio>(() => networkClient.dioRefreshToken,
      instanceName: 'refreshTokenNetworkClient');
  final sharedPreferences = await networkClient.sharedPreferences;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<ErrorTranslator>(() => ErrorTranslator());
  g.registerLazySingleton<LocaleProvider>(() => LocaleProvider());
  g.registerFactory<OauthTokensStorage>(() => OauthTokensStorage(
        g<SharedPreferences>(),
      ));
  g.registerFactory<NetworkService>(() => NetworkService(
        g('defaultNetworkClient'),
        g<ResponseConverter>(),
      ));
  g.registerFactory<RefreshTokenNetworkService>(
      () => RefreshTokenNetworkService(
            g('refreshTokenNetworkClient'),
            g<ResponseConverter>(),
          ));
  g.registerFactory<BottomNavigationBloc>(() => BottomNavigationBloc());
  g.registerFactory<StartGameBloc>(() => StartGameBloc());
  g.registerLazySingleton<DifficultyLevelEntityMapper>(
      () => DifficultyLevelEntityMapper());
  g.registerLazySingleton<DifficultyLevelModelMapper>(
      () => DifficultyLevelModelMapper());
  g.registerLazySingleton<GameStatusEntityMapper>(
      () => GameStatusEntityMapper());
  g.registerLazySingleton<GameMarkEntityMapper>(() => GameMarkEntityMapper());
  g.registerLazySingleton<GameMoveEntityMapper>(() => GameMoveEntityMapper(
        g<GameMarkEntityMapper>(),
      ));
  g.registerFactory<BearerTokenInterceptor>(() => BearerTokenInterceptor(
        g<OauthTokensStorage>(),
      ));
  g.registerFactory<LanguageInterceptor>(() => LanguageInterceptor(
        g<LocaleProvider>(),
      ));
  g.registerFactory<RefreshTokenRepository>(() => RefreshTokenRepository(
        g<RefreshTokenNetworkService>(),
      ));
  g.registerFactory<TestRepository>(() => TestRepository(
        g<NetworkService>(),
      ));
  g.registerFactory<TestBloc>(() => TestBloc(
        g<OauthTokensStorage>(),
        g<TestRepository>(),
      ));
  g.registerLazySingleton<GameResponseEntityMapper>(
      () => GameResponseEntityMapper(
            g<GameStatusEntityMapper>(),
            g<DifficultyLevelEntityMapper>(),
            g<GameMarkEntityMapper>(),
            g<GameMoveEntityMapper>(),
          ));
  g.registerFactory<RefreshTokenInterceptor>(() => RefreshTokenInterceptor(
        g<OauthTokensStorage>(),
        g<RefreshTokenRepository>(),
      ));
  g.registerFactory<CreateGameRepositoryImpl>(() => CreateGameRepositoryImpl(
        g<NetworkService>(),
        g<DifficultyLevelModelMapper>(),
        g<GameResponseEntityMapper>(),
      ));
}

class _$NetworkClient extends NetworkClient {}
