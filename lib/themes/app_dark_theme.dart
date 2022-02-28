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
    ),

    //FloatingActionButton
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: Colors.indigo,
      shape: const StadiumBorder(),
      elevation: 0,
    )),

    //inputsDecorations

    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primary,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    ),
  );
}
