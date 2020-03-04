import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThemeProvider {
  static final primaryColor = Color(0xFFF6CD61);
  static final accentColor = Color(0xFF00D1FF);
  static final textColor = Colors.black87;
  static final darkThemeTextColor = Colors.white;

  ThemeData getThemeData() {
    return ThemeData(
      primaryColor: primaryColor,
      accentColor: accentColor,
      fontFamily: 'Lato',
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
          textTheme: TextTheme(
        title: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      )),
    );
  }

  ThemeData getDarkThemeData() {
    final theme = getThemeData();
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      accentColor: accentColor,
      fontFamily: 'Lato',
      textTheme: theme.textTheme
          .copyWith(
            caption: TextStyle(color: darkThemeTextColor),
          )
          .apply(bodyColor: darkThemeTextColor),
      buttonTheme: theme.buttonTheme,
      appBarTheme: theme.appBarTheme.copyWith(
        brightness: Brightness.dark,
        textTheme: theme.appBarTheme.textTheme.copyWith(
            title: theme.appBarTheme.textTheme.title
                .copyWith(color: darkThemeTextColor)),
      ),
    );
  }
}
