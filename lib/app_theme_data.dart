import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme _googleFontsRobotoTheme = GoogleFonts.robotoTextTheme();

class AppThemeData {
  final ThemeData _lightThemeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF0095F6),
      ),
      textTheme: _googleFontsRobotoTheme,
    );

  final ThemeData _darkThemeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: const Color(0xFF334155),
      ),
      textTheme: _googleFontsRobotoTheme,
    );

  light() {
    return _lightThemeData;
  }

  dark() {
    return _darkThemeData;
  }
}

