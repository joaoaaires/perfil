import 'package:flutter/material.dart';

class AppTheme {
  static const intPrimary = 0xFF252A2E;
  static const colorPrimary = Color(intPrimary);
  static final theme = ThemeData(
    primaryColor: colorPrimary,
    primarySwatch: const MaterialColor(
      intPrimary,
      {
        50: Color(0xFFededed),
        100: Color(0xFFd2d4d5),
        200: Color(0xFFb1b7bc),
        300: Color(0xFF919ba4),
        400: Color(0xFF798691),
        500: Color(0xFF617280),
        600: Color(0xFF55646f),
        700: Color(0xFF45515a),
        800: Color(0xFF363e45),
        900: colorPrimary,
      },
    ),
  );
}
