// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:tictactoe/core/common/locale_provider.dart';
import 'package:tictactoe/core/data/network/interceptor/connection_interceptor.dart';
import 'package:tictactoe/core/data/network/interceptor/language_interceptor.dart';
import 'package:tictactoe/core/data/network/interceptor/logger_interceptor.dart';
import 'package:tictactoe/core/domain/error/error_translator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tictactoe/core/injection/register_module.dart';
import 'package:dio/dio.dart';
import 'package:tictactoe/core/presentation/error/error_handler.dart';
import 'package:tictactoe/data/mapper/entity/difficilty_level_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_mark_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_move_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_status_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/login_response_entity_mapper.dart';
import 'package:tictactoe/data/mapper/model/difficilty_level_model_mapper.dart';
import 'package:tictactoe/data/mapper/model/login_request_model_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/data/service/refresh_token_network_service.dart';
import 'package:tictactoe/domain/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:tictactoe/core/common/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/core/data/network/interceptor/bearer_token_interceptor.dart';
import 'package:tictactoe/data/mapper/entity/game_response_entity_mapper.dart';
import 'package:tictactoe/data/repository/create_game_repository_impl.dart';
import 'package:tictactoe/domain/repository/create_game_repository.dart';
import 'package:tictactoe/data/repository/login_repository_impl.dart';
import 'package:tictactoe/domain/repository/login_repository.dart';
import 'package:tictactoe/data/repository/refresh_token_repositoryImpl.dart';
import 'package:tictactoe/data/repository/test_repository.dart';
import 'package:tictactoe/domain/bloc/game/game_bloc.dart';
import 'package:tictactoe/domain/bloc/login/login_bloc.dart';
import 'package:tictactoe/presentation/test_bloc.dart';
import 'package:tictactoe/core/data/network/interceptor/refresh_token_interceptor.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final networkClient = _$NetworkClient();
  g.registerLazySingleton<LocaleProvider>(() => LocaleProvider());
  g.registerFactory<ConnectionInterceptor>(() => ConnectionInterceptor());
  g.registerFactory<LanguageInterceptor>(
      () => LanguageInterceptor(g<LocaleProvider>()));
  g.registerFactory<LoggerInterceptor>(() => LoggerInterceptor());
  g.registerLazySingleton<ErrorTranslator>(() => ErrorTranslator());
  final sharedPreferences = await networkClient.sharedPreferences;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<Dio>(() => networkClient.dioDefault,
      instanceName: 'defaultNetworkClient');
  g.registerLazySingleton<Dio>(() => networkClient.dioRefreshToken,
      instanceName: 'refreshTokenNetworkClient');
  g.registerLazySingleton<ErrorHandler>(() => ErrorHandler());
  g.registerLazySingleton<DifficultyLevelEntityMapper>(
      () => DifficultyLevelEntityMapper());
  g.registerLazySingleton<GameMarkEntityMapper>(() => GameMarkEntityMapper());
  g.registerLazySingleton<GameMoveEntityMapper>(
      () => GameMoveEntityMapper(g<GameMarkEntityMapper>()));
  g.registerLazySingleton<GameStatusEntityMapper>(
      () => GameStatusEntityMapper());
  g.registerLazySingleton<LoginResponseEntityMapper>(
      () => LoginResponseEntityMapper());
  g.registerLazySingleton<DifficultyLevelModelMapper>(
      () => DifficultyLevelModelMapper());
  g.registerLazySingleton<LoginRequestModelMapper>(
      () => LoginRequestModelMapper());
  g.registerLazySingleton<NetworkService>(
      () => NetworkService(g<Dio>(instanceName: 'defaultNetworkClient')));
  g.registerLazySingleton<RefreshTokenNetworkService>(() =>
      RefreshTokenNetworkService(
          g<Dio>(instanceName: 'refreshTokenNetworkClient')));
  g.registerFactory<BottomNavigationBloc>(() => BottomNavigationBloc());
  g.registerFactory<OauthTokensStorage>(
      () => OauthTokensStorage(g<SharedPreferences>()));
  g.registerFactory<BearerTokenInterceptor>(
      () => BearerTokenInterceptor(g<OauthTokensStorage>()));
  g.registerLazySingleton<GameResponseEntityMapper>(
      () => GameResponseEntityMapper(
            g<GameStatusEntityMapper>(),
            g<DifficultyLevelEntityMapper>(),
            g<GameMarkEntityMapper>(),
            g<GameMoveEntityMapper>(),
          ));
  g.registerLazySingleton<CreateGameRepository>(() => CreateGameRepositoryImpl(
        g<NetworkService>(),
        g<DifficultyLevelModelMapper>(),
        g<GameResponseEntityMapper>(),
      ));
  g.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(
        g<NetworkService>(),
        g<LoginRequestModelMapper>(),
        g<LoginResponseEntityMapper>(),
      ));
  g.registerFactory<RefreshTokenRepository>(() => RefreshTokenRepository(
      g<RefreshTokenNetworkService>(),
      g<Dio>(instanceName: 'refreshTokenNetworkClient')));
  g.registerFactory<TestRepository>(() => TestRepository(g<NetworkService>()));
  g.registerFactory<GameBloc>(() => GameBloc(g<CreateGameRepository>()));
  g.registerFactory<LoginBloc>(
      () => LoginBloc(g<LoginRepository>(), g<OauthTokensStorage>()));
  g.registerFactory<TestBloc>(
      () => TestBloc(g<OauthTokensStorage>(), g<TestRepository>()));
  g.registerFactory<RefreshTokenInterceptor>(() => RefreshTokenInterceptor(
      g<OauthTokensStorage>(), g<RefreshTokenRepository>()));
}

class _$NetworkClient extends NetworkClient {}
