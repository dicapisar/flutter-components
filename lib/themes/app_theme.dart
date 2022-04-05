import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color Primario
    primaryColor: primary,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),

    // FloatingActionsBottons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),

    // ElevationButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color Primario
      primaryColor: primary,

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      // Scaffold
      scaffoldBackgroundColor: Colors.black);
}
