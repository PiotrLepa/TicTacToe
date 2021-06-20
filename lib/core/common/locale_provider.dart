import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocaleProvider {
  late Locale currentLocale;

  void init(BuildContext context) {
    currentLocale = Localizations.localeOf(context);
  }
}
