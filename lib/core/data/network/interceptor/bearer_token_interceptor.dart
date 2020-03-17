import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';

@injectable
class BearerTokenInterceptor extends InterceptorsWrapper {
  final OauthTokensStorage _oauthTokensStorage;

  BearerTokenInterceptor(this._oauthTokensStorage);

  @override
  Future onRequest(RequestOptions options) async {
//    final accessToken = await _oauthTokensStorage.accessToken; // TODO
    final accessToken = "d4ee8b7d-cb71-4657-8869-146d6be3ff9e";
    final headers = options.headers;

    if (accessToken != null && _isRequestSecure(headers)) {
      _addAuthorizationHeader(headers, accessToken);
    }
    _removeInternalSecuredHeader(headers);

    return super.onRequest(options);
  }

  static bool _isRequestSecure(Map<String, dynamic> headers) =>
      headers[securedHeaderKey] == securedHeaderKey;

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
