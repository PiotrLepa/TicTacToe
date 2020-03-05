import 'package:flutter/material.dart';

class ThemeProvider {
  final bool isDark;

  Color get primaryColor => Color(0xFFF6CD61);

  Color get accentColor => Color(0xFF00D1FF);

  Color get textColor => isDark ? Colors.white : Colors.black87;

  Color get markXColor => Color(0xFFFE8A71);

  Color get markOColor => Color(0xFF0E9AA7);

  factory ThemeProvider.of(BuildContext context) {
    return ThemeProvider(
      isDark: MediaQuery.of(context).platformBrightness == Brightness.dark,
    );
  }

  ThemeProvider({@required this.isDark});

  ThemeData getThemeData() {
    return ThemeData(
      primaryColor: primaryColor,
      accentColor: accentColor,
      fontFamily: 'Lato',
      brightness: isDark ? Brightness.dark : Brightness.light,
      textTheme: TextTheme(
        button: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      buttonTheme: ButtonThemeData(
        padding: EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        buttonColor: primaryColor,
      ),
      appBarTheme: AppBarTheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        iconTheme: IconThemeData(
          color: textColor,
        ),
        textTheme: TextTheme(
          title: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }

//  ThemeData getDarkThemeData() {
//    final theme = getThemeData();
//    return ThemeData(
//      brightness: Brightness.dark,
//      primaryColor: primaryColor,
//      accentColor: accentColor,
//      fontFamily: 'Lato',
//      textTheme: theme.textTheme
//          .copyWith(
//            caption: TextStyle(
//              color: darkThemeTextColor,
//            ),
//          )
//          .apply(
//            bodyColor: darkThemeTextColor,
//          ),
//      buttonTheme: theme.buttonTheme,
//      appBarTheme: theme.appBarTheme.copyWith(
//        brightness: Brightness.dark,
//        iconTheme: theme.appBarTheme.iconTheme.copyWith(
//          color: darkThemeTextColor,
//        ),
//        textTheme: theme.appBarTheme.textTheme.copyWith(
//          title: theme.appBarTheme.textTheme.title.copyWith(
//            color: darkThemeTextColor,
//          ),
//        ),
//      ),
//    );
//  }
}
