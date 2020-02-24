import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/network/model/token/refresh_token_request/refresh_token_request.dart';
import 'package:tictactoe/core/network/model/token/token_response.dart';
import 'package:tictactoe/core/network/network_constant.dart';
import 'package:tictactoe/core/network/repository/refresh_token_repository.dart';
import 'package:tictactoe/core/storage/oauth_tokens_storage.dart';

@injectable
class RefreshTokenInterceptor extends InterceptorsWrapper {
  final OauthTokensStorage _oauthTokensStorage;
  final RefreshTokenRepository _refreshTokenRepository;

  RefreshTokenInterceptor(
    this._oauthTokensStorage,
    this._refreshTokenRepository,
  );

  @override
  Future onError(DioError err) async {
    if (err.response?.statusCode == 401) {
      final retriedData = await refreshTokenAndRetry(err.response.request);
      final response = Response(
        data: retriedData,
      );
      return Future.value(response);
    } else {
      return err;
    }
  }

  Future refreshTokenAndRetry(RequestOptions request) async {
    final tokens = await _refreshAccessToken();
    _oauthTokensStorage.saveTokens(
      tokens.accessToken,
      tokens.refreshToken,
    );
    return _refreshTokenRepository.retryRequest(request);
  }

  Future<TokenResponse> _refreshAccessToken() async {
    final refreshToken = await _oauthTokensStorage.refreshToken;
    final request = RefreshTokenRequest(
      refreshToken: refreshToken,
      grantType: oauthGrantTypeRefreshToken,
    );
    return _refreshTokenRepository.refreshAccessToken(request);
  }
}
