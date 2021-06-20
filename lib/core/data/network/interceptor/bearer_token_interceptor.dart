import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';

@lazySingleton
class BearerTokenInterceptor extends InterceptorsWrapper {
  final OauthTokensStorage _oauthTokensStorage;

  BearerTokenInterceptor(this._oauthTokensStorage);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await _oauthTokensStorage.accessToken;
    final headers = options.headers;

    if (accessToken != null && _isRequestSecure(headers)) {
      _addAuthorizationHeader(headers, accessToken);
    }
    _removeInternalSecuredHeader(headers);

    super.onRequest(options, handler);
  }

  static bool _isRequestSecure(Map<String, dynamic> headers) =>
      headers[securedHeaderKey] == true;

  void _addAuthorizationHeader(
    Map<String, dynamic> headers,
    String accessToken,
  ) =>
      headers[authorizationHeader] = '$bearerPrefix $accessToken';

  void _removeInternalSecuredHeader(
    Map<String, dynamic> headers,
  ) =>
      headers..remove(securedHeaderKey);
}
