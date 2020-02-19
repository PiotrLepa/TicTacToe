import 'package:shared_preferences/shared_preferences.dart';

class OauthTokensStorage {
  final _prefs = SharedPreferences.getInstance(); // TODO inject?

  static const String _accessTokenKey = "ACCESS_TOKEN_KEY";
  static const String _refreshTokenKey = "REFRESH_TOKEN_KEY";

  Future<String> get accessToken async => _getPrefValue(_accessTokenKey);

  Future<String> get refreshToken async => _getPrefValue(_refreshTokenKey);

  void saveTokens(
    String accessToken,
    String refreshToken,
  ) async {
    await _prefs
      ..setString(_accessTokenKey, accessToken)
      ..setString(_refreshTokenKey, refreshToken);
  }

  void clearTokens() async {
    await _prefs
      ..setString(_accessTokenKey, null)
      ..setString(_refreshTokenKey, null);
  }

  Future<String> _getPrefValue(String key) async =>
      _prefs.then((prefs) => prefs.getString(key));
}
