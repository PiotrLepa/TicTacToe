import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/exception/api_exception.dart';
import 'package:tictactoe/core/network/model/token/refresh_token_request/refresh_token_request.dart';
import 'package:tictactoe/core/network/repository/refresh_token_repository.dart';
import 'package:tictactoe/core/storage/oauth_tokens_storage.dart';

class AccessTokenRefresher {
  final _oauthTokensStorage = OauthTokensStorage();
  final _refreshTokenRepository = RefreshTokenRepository();

  Future<T> refreshToken<T>(Response response) async {
    final accessToken = await _refreshAccessToken();
    // TODO retry request
  }

  Future<String> _refreshAccessToken() async {
    final refreshToken = await _oauthTokensStorage.refreshToken;
    if (refreshToken == null) {
      throw ApiException.unauthorized(401,
          'Attempted to refresh access token without actual refresh token');
    }

    final request = RefreshTokenRequest(
      refreshToken: refreshToken,
      grantType: "refresh_token",
    );
    try {
      final result = await _refreshTokenRepository.refreshAccessToken(request);
      _oauthTokensStorage.saveTokens(result.accessToken, result.refreshToken);
      return result.accessToken;
    } catch (e) {
      return null;
    }
  }
}
