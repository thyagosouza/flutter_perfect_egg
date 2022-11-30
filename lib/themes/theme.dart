import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFFFDBF00);
const accentColor = const Color(0xFFFFFFFF);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      bodyText1: new TextStyle(
        fontFamily: "Montserrat",
      ),
      bodyText2: TextStyle(
        fontFamily: "Montserrat",
      ),
      button: TextStyle(
        fontFamily: "Montserrat",
      ),
      caption: TextStyle(
        fontFamily: "Montserrat",
      ),
      displaySmall: TextStyle(
        fontFamily: "Montserrat",
      ),
      displayMedium: TextStyle(
        fontFamily: "Montserrat",
      ),
      displayLarge: TextStyle(
        fontFamily: "Montserrat",
      ),
      headline1: TextStyle(
        fontFamily: "Montserrat",
      ),
      overline: TextStyle(
        fontFamily: "Montserrat",
      ),
      headlineSmall: TextStyle(
        fontFamily: "Montserrat",
      ),
      subtitle1: TextStyle(
        fontFamily: "Montserrat",
      ),
      titleMedium: TextStyle(
        fontFamily: "Montserrat",
      ),
    ),
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: accentColor,
    ),
  );
}
