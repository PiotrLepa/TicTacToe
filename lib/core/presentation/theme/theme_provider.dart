import 'package:flutter/material.dart';

class ThemeProvider {
  final bool isDark;

  Color get primaryColor => const Color(0xFFF6CD61);

  Color get primaryColorLight => const Color(0xFFFFEBA1);

  Color get primaryColorDark => const Color(0xFFC09C31);

  Color get accentColor => const Color(0xFF667EEA);

  Color get textColorLight => Colors.grey;

  Color get textColor => isDark ? Colors.white : Colors.black87;

  Color get textColorInverted => isDark ? Colors.black87 : Colors.white;

  Color get markXColor => const Color(0xFFFE8A71);

  Color get markOColor => const Color(0xFF0E9AA7);

  ThemeProvider({required this.isDark});

  factory ThemeProvider.of(BuildContext context) {
    return ThemeProvider(
      isDark: MediaQuery.of(context).platformBrightness == Brightness.dark,
    );
  }

  ThemeData getThemeData() {
    return ThemeData(
      primaryColor: primaryColor,
      primaryColorLight: primaryColorLight,
      primaryColorDark: primaryColorDark,
      accentColor: accentColor,
      fontFamily: 'Lato',
      brightness: isDark ? Brightness.dark : Brightness.light,
      textTheme: const TextTheme(
        button: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
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
}
