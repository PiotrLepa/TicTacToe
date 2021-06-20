import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/core/data/network/exception/internal/internal_exception.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/data/network/refresh_token_repository.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/refresh_token_request/refresh_token_request_model.dart';

@lazySingleton
class RefreshTokenInterceptor extends InterceptorsWrapper {
  final OauthTokensStorage _oauthTokensStorage;
  final RefreshTokenRepository _refreshTokenRepository;

  RefreshTokenInterceptor(
    this._oauthTokensStorage,
    this._refreshTokenRepository,
  );

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode != 401) {
      super.onError(err, handler);
    } else {
      // TODO check
      final request = err.response?.requestOptions;
      if (request != null) {
        _refreshTokenAndRetry(request).then(
          (dynamic retriedResponseData) {
            final response = Response(
              requestOptions: request,
              data: retriedResponseData,
            );
            return Future.value(response);
          },
        );
      }
      super.onError(err, handler);
    }
  }

  Future<dynamic> _refreshTokenAndRetry(RequestOptions request) async =>
      _refreshAccessToken().then<dynamic>((tokens) {
        _oauthTokensStorage.saveTokens(
          tokens.accessToken,
          tokens.refreshToken,
        );
        return _refreshTokenRepository.retryRequest(request);
      }).catchError((dynamic error) =>
          Future<dynamic>.error(const InternalException.sessionExpired()));

  Future<LoginResponseModel> _refreshAccessToken() async {
    final refreshToken = await _oauthTokensStorage.refreshToken;
    if (refreshToken == null) {
      return Future.error(const InternalException.sessionExpired());
    }
    final request = RefreshTokenRequestModel(
      refreshToken: refreshToken,
      grantType: oauthGrantTypeRefreshToken,
    );
    return _refreshTokenRepository.refreshAccessToken(request);
  }
}
