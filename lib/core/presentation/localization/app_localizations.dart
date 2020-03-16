import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/common/locale_provider.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/injection/injection.dart';

class AppLocalizations {
  final Locale locale;
  final LocaleProvider _localeProvider;

  AppLocalizations(this.locale, this._localeProvider) {
    _localeProvider.currentLocale = locale;
  }

  Map<String, String> _localizedStrings;

  String get apiErrorNoConnection => _localizedStrings["apiErrorNoConnection"];

  String get apiErrorBadRequest => _localizedStrings["apiErrorBadRequest"];

  String get apiErrorUnauthorized => _localizedStrings["apiErrorUnauthorized"];

  String get apiErrorNotFound => _localizedStrings["apiErrorNotFound"];

  String get apiErrorInternalServerError =>
      _localizedStrings["apiErrorInternalServerError"];

  String get apiErrorUnknown => _localizedStrings["apiErrorUnknown"];

  String get pageStartGame => _localizedStrings["pageStartGame"];

  String get pageGameResults => _localizedStrings["pageGameResults"];

  String get pageSettings => _localizedStrings["pageSettings"];

  String get startGameGameWithComputer =>
      _localizedStrings["startGameGameWithComputer"];

  String get gameScreenTitle => _localizedStrings["gameScreenTitle"];

  String get gameScreenPlayerMark => _localizedStrings["gameScreenPlayerMark"];

  String get difficultyLevelEasy => _localizedStrings["difficultyLevelEasy"];

  String get difficultyLevelMedium =>
      _localizedStrings["difficultyLevelMedium"];

  String get difficultyLevelHard => _localizedStrings["difficultyLevelHard"];

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
    AppLocalizations localizations = AppLocalizations(locale, _localeProvider);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
