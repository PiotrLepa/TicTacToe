import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/network_constant.dart';
import 'package:tictactoe/core/storage/oauth_tokens_storage.dart';

class BearerTokenInterceptor extends InterceptorsWrapper {
  final _oauthTokensStorage = OauthTokensStorage();

  @override
  Future onRequest(RequestOptions options) async {
    final accessToken = await _oauthTokensStorage.accessToken;
    final headers = options.headers;

    if (accessToken != null && _isRequestSecure(headers)) {
      _removeInternalSecuredHeader(headers);
      _addAuthorizationHeader(headers, accessToken);
    }

    return super.onRequest(options);
  }

  static bool _isRequestSecure(Map<String, dynamic> headers) =>
      headers[securedHeader] == true;

  void _addAuthorizationHeader(Map<String, dynamic> headers,
      String accessToken,) =>
      headers[authorizationHeader] = '$bearerPrefix $accessToken';

  void _removeInternalSecuredHeader(Map<String, dynamic> headers,) =>
      headers..remove(securedHeader);
}
