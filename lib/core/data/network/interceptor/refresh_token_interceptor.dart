import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/util/oauth_tokens_storage.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/refresh_token_request/refresh_token_request_model.dart';
import 'package:tictactoe/data/repository/refresh_token_repository.dart';

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

  Future<LoginResponseModel> _refreshAccessToken() async {
    final refreshToken = await _oauthTokensStorage.refreshToken;
    final request = RefreshTokenRequestModel(
      refreshToken: refreshToken,
      grantType: oauthGrantTypeRefreshToken,
    );
    return _refreshTokenRepository.refreshAccessToken(request);
  }
}
