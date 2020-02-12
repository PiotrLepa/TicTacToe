import 'package:dio/dio.dart';
import 'package:tictactoe/core/network/network_constant.dart';

class BearerTokenInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
    final accessToken =
        "76720471-e058-45e5-a396-59630432bf61"; // TODO get from prefs
    final headers = options.headers;

    if (accessToken != null && _isRequestSecure(headers)) {
      options.headers = addAuthorizationHeader(headers, accessToken);
    }

    return super.onRequest(options);
  }

  static Map<String, dynamic> addAuthorizationHeader(
    Map<String, dynamic> oldHeaders,
    String accessToken,
  ) {
    final newHeaders = new Map<String, dynamic>.from(oldHeaders);
    newHeaders.remove(securedHeader);
    newHeaders[authorizationHeader] = '$bearerPrefix $accessToken';
    return newHeaders;
  }

  static bool _isRequestSecure(Map<String, dynamic> headers) =>
      headers[securedHeader] == true;
}
