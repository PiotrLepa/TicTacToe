import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocaleProvider {
  Locale currentLocale; // set is main file

  BuiltList<Locale> getSupportedLocales() => BuiltList([
        const Locale('pl'),
        const Locale('en'),
      ]);

  BuiltList<String> getSupportedLanguageCodes() =>
      getSupportedLocales().map((locale) => locale.languageCode);
}
