import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      colorScheme: const ColorScheme(
        primary: Colors.white,
        primaryVariant: Color(0xffcccccc),
        secondary: Colors.blue,
        secondaryVariant: Color(0xff0069c0),
        surface: Colors.white,
        background: Colors.white,
        error: Colors.redAccent,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: Color(0xffcccccc),
        onBackground: Color(0xffcccccc),
        onError: Colors.white,
        brightness: Brightness.light,
      ),
      fontFamily: 'NotoSans',
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: const ColorScheme(
        primary: Color(0xff252526),
        primaryVariant: Colors.black,
        secondary: Color(0xffffa400),
        secondaryVariant: Color(0xffc67500),
        surface: Color(0xff252526),
        background: Color(0xff252526),
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.white,
        brightness: Brightness.dark,
      ),
      fontFamily: 'NotoSans',
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xffffa400)),
        ),
      ),
    );
  }
}
