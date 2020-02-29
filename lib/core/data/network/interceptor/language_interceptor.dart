import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/util/locale_provider.dart';

@injectable
class LanguageInterceptor extends InterceptorsWrapper {
  final LocaleProvider _localeProvider;

  LanguageInterceptor(this._localeProvider);

  @override
  Future onRequest(RequestOptions options) {
    final headers = options.headers;
    headers[accept_language_header] =
        _localeProvider.currentLocale.languageCode;

    return super.onRequest(options);
  }
}
