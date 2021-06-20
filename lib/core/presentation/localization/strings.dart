import 'package:auto_localized/annotations.dart';

@AutoLocalized(
  locales: [
    AutoLocalizedLocale(
      languageCode: 'pl',
      translationsFilePath: 'lang/pl.json',
    ),
    AutoLocalizedLocale(
      languageCode: 'en',
      translationsFilePath: 'lang/en.json',
    ),
  ],
)
class $Strings {}
