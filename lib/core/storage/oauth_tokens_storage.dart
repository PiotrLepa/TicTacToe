import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class OauthTokensStorage {
  final SharedPreferences _prefs;

  static const String _accessTokenKey = "ACCESS_TOKEN_KEY";
  static const String _refreshTokenKey = "REFRESH_TOKEN_KEY";

  OauthTokensStorage(this._prefs);

  Future<String> get accessToken async => _prefs.getString(_accessTokenKey);

  Future<String> get refreshToken async => _prefs.getString(_refreshTokenKey);

  void saveTokens(
    String accessToken,
    String refreshToken,
  ) {
    _prefs
      ..setString(_accessTokenKey, accessToken)
      ..setString(_refreshTokenKey, refreshToken);
  }

  void clearTokens() {
    _prefs..setString(_accessTokenKey, null)..setString(_refreshTokenKey, null);
  }
}
