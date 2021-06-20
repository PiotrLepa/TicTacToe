import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/locale_provider.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';

@lazySingleton
class LanguageInterceptor extends InterceptorsWrapper {
  final LocaleProvider _localeProvider;

  LanguageInterceptor(this._localeProvider);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final headers = options.headers;
    headers[accept_language_header] =
        _localeProvider.currentLocale.languageCode;

    super.onRequest(options, handler);
  }
}
