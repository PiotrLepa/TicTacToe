import 'package:dio/dio.dart';

import 'interceptor/bearer_token_interceptor.dart';
import 'interceptor/connection_interceptor.dart';
import 'interceptor/logger_interceptor.dart';
import 'interceptor/refresh_token_interceptor.dart';
import 'network_constant.dart';

final networkClient = _createDefaultClient()
  ..interceptors.add(RefreshTokenInterceptor());

final refreshTokenNetworkClient = _createDefaultClient();

Dio _createDefaultClient() => Dio()
  ..options.baseUrl = baseUrl
  ..interceptors.add(BearerTokenInterceptor())
  ..interceptors.add(LoggerInterceptor())
  ..interceptors.add(ConnectionInterceptor());
