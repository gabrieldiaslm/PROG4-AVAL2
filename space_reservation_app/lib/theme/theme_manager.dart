import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF6A1B9A); // Roxo
const Color secondaryColor = Color(0xFF1E88E5); // Azul

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF121212),
  colorScheme: const ColorScheme.dark(
    primary: primaryColor,
    primaryContainer: Color(0xFF4A148C),
    onPrimaryContainer: Color(0xFFE1BEE7),
    secondary: secondaryColor,
    secondaryContainer: Color(0xFF1565C0),
    onSecondaryContainer: Color(0xFFBBDEFB),
    surface: Color(0xFF1E1E1E),
    onSurface: Color.fromARGB(255, 59, 59, 59),
    surfaceContainerHighest: Color(0xFF2C2C2C),
    onSurfaceVariant: Color(0xFFB0BEC5),
    error: Color(0xFFCF6679),
    outline: Color(0xFFBDBDBD),
  ).copyWith(
    brightness: Brightness.dark,
  ),
  textTheme: const TextTheme(
    headlineSmall: TextStyle(
      color: Color(0xFFE0E0E0),
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      color: Color(0xFFE0E0E0),
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      color: Color(0xFFE0E0E0),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1E1E1E),
    foregroundColor: Color(0xFFE0E0E0),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: primaryColor,
    textTheme: ButtonTextTheme.primary,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF2C2C2C),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFBDBDBD)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFBDBDBD)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor),
    ),
    labelStyle: TextStyle(color: Color.fromARGB(255, 48, 46, 46)),
    hintStyle: TextStyle(color: Color.fromARGB(255, 46, 47, 48)),
  ),
);
