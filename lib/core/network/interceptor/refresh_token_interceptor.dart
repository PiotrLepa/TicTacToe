import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/model/token/refresh_token_request/refresh_token_request.dart';
import 'package:tictactoe/core/network/model/token/token_response.dart';
import 'package:tictactoe/core/network/network_constant.dart';
import 'package:tictactoe/core/network/repository/refresh_token_repository.dart';
import 'package:tictactoe/core/storage/oauth_tokens_storage.dart';

class RefreshTokenInterceptor extends InterceptorsWrapper {
  final _oauthTokensStorage = OauthTokensStorage();
  final _refreshTokenRepository = RefreshTokenRepository();

  @override
  Future onError(DioError err) async {
    if (err.response?.statusCode == 401) {
      final retriedData = await refreshTokenAndRetry(err.response);
      final response = Response(
        data: retriedData,
      );
      return Future.value(response);
    } else {
      return err;
    }
  }

  Future<T> refreshTokenAndRetry<T>(Response response) async {
    final tokenResponse = await _refreshAccessToken();
    _oauthTokensStorage.saveTokens(
      tokenResponse.accessToken,
      tokenResponse.refreshToken,
    );
    return _refreshTokenRepository.retryRequest<T>(response.request);
  }

  Future<TokenResponse> _refreshAccessToken() async {
    final refreshToken = await _oauthTokensStorage.refreshToken;
    final request = RefreshTokenRequest(
      refreshToken: refreshToken,
      grantType: oauthGrantTypeRefreshToken,
    );
    try {
      return _refreshTokenRepository.refreshAccessToken(request);
    } catch (e) {
      return Future.error(e);
    }
  }
}
