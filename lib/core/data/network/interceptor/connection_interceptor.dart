import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/exception/internal/internal_exception.dart';

@lazySingleton
class ConnectionInterceptor extends InterceptorsWrapper {
  final Connectivity _connectivity;

  ConnectionInterceptor(this._connectivity);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    final hasConnection = connectivityResult != ConnectivityResult.none;

    if (!hasConnection) {
      return handler.reject(
        DioError(
          requestOptions: options,
          error: const NoConnection(),
        ),
      );
    } else {
      return super.onRequest(options, handler);
    }
  }
}
