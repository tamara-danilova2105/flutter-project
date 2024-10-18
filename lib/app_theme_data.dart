import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextTheme _googleFontsRobotoTheme = GoogleFonts.robotoTextTheme();
final OutlinedButtonThemeData _outlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    side: const BorderSide(
      color: Color(0xFF0095F6)
    )
  )
);

class AppThemeData {
  final ThemeData _lightThemeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF0095F6),
      ),
      textTheme: _googleFontsRobotoTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
    );

  final ThemeData _darkThemeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: const Color(0xFF334155),
      ),
      textTheme: _googleFontsRobotoTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
    );

  light() {
    return _lightThemeData;
  }

  dark() {
    return _darkThemeData;
  }
}

