import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/network_constant.dart';

class BearerTokenInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
    final accessToken =
        "a4391f14-16ee-4df5-bcc1-312a9bd10210"; // TODO get from prefs
    final headers = options.headers;

    if (accessToken != null && _isRequestSecure(headers)) {
      _removeInternalSecuredHeader(headers);
      _addAuthorizationHeader(headers, accessToken);
    }

    return super.onRequest(options);
  }

  static bool _isRequestSecure(Map<String, dynamic> headers) =>
      headers[securedHeader] == true;

  void _addAuthorizationHeader(
    Map<String, dynamic> headers,
    String accessToken,
  ) =>
      headers[authorizationHeader] = '$bearerPrefix $accessToken';

  void _removeInternalSecuredHeader(
    Map<String, dynamic> headers,
  ) =>
      headers..remove(securedHeader);
}
