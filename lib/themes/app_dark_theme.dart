import 'package:flutter/material.dart';

class AppDarkTheme {
  static Color primary = Colors.indigo.shade700;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color primario
      primaryColor: primary,

      //AppBar Theme
      appBarTheme: AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      //TextButtonTheme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ));
}
