import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/core/data/network/exception/internal/internal_exception.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/data/network/refresh_token_repository.dart';
import 'package:tictactoe/data/model/refresh_token_request/refresh_token_request_model.dart';

@lazySingleton
class RefreshTokenInterceptor extends InterceptorsWrapper {
  final OauthTokensStorage _oauthTokensStorage;
  final RefreshTokenRepository _refreshTokenRepository;

  RefreshTokenInterceptor(this._oauthTokensStorage,
      this._refreshTokenRepository,);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final response = err.response;
    if (response == null || response.statusCode != 401) {
      super.onError(err, handler);
    } else {
      _tryRefreshTokenAndRetryRequest(response.requestOptions, handler);
    }
  }

  void _tryRefreshTokenAndRetryRequest(RequestOptions request,
      ErrorInterceptorHandler handler,) {
    _refreshAccessToken()
        .then<dynamic>((_) => _refreshTokenRepository.retryRequest(request))
        .then((dynamic retriedResponseData) {
      final retriedResponse = Response(
        requestOptions: request,
        data: retriedResponseData,
      );
      handler.resolve(retriedResponse);
    }).catchError((dynamic error) {
      final dioError = DioError(
        requestOptions: request,
        error: error,
      );
      handler.reject(dioError);
    });
  }

  Future<void> _refreshAccessToken() async {
    final refreshToken = await _oauthTokensStorage.refreshToken;
    if (refreshToken == null) {
      return Future.error(const InternalException.sessionExpired());
    }
    final request = RefreshTokenRequestModel(
      refreshToken: refreshToken,
      grantType: oauthGrantTypeRefreshToken,
    );
    return _refreshTokenRepository.refreshAccessToken(request).then<void>(
          (tokens) {
        _oauthTokensStorage.saveTokens(
          tokens.accessToken,
          tokens.refreshToken,
        );
      },
    );
  }
}
