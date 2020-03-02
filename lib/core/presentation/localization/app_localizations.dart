import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/util/locale_provider.dart';
import 'package:tictactoe/core/util/raw_key_string.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  Map<String, String> _localizedStrings;

//  Errors
  String get apiErrorNoConnection => _localizedStrings["apiErrorNoConnection"];

  String get apiErrorBadRequest => _localizedStrings["apiErrorBadRequest"];

  String get apiErrorUnauthorized => _localizedStrings["apiErrorUnauthorized"];

  String get apiErrorNotFound => _localizedStrings["apiErrorNotFound"];

  String get apiErrorInternalServerError =>
      _localizedStrings["apiErrorInternalServerError"];

  String get apiErrorUnknown => _localizedStrings["apiErrorUnknown"];

//  Bottom Navigation
  String get pageStartGame => _localizedStrings["pageStartGame"];

  String get pageGameResults => _localizedStrings["pageGameResults"];

  String get pageSettings => _localizedStrings["pageSettings"];

  Future load() async {
    final String jsonString =
        await rootBundle.loadString('lang/${locale.languageCode}.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  String translate(String key) => _localizedStrings[key];

  String get(RawKeyString rawKeyString) => rawKeyString.get(_localizedStrings);

  static LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static AppLocalizations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  final LocaleProvider _localeProvider = getIt.get<LocaleProvider>();

  _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _localeProvider.getSupportedLocales().contains(locale);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
