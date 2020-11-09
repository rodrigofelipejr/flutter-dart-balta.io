import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF2AACFF);
const accentColor = const Color(0xFFFFFFFF);

ThemeData androidTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      bodyText2: new TextStyle(
        fontFamily: "Poppins",
      ),
      headline1: new TextStyle(
        fontFamily: "Poppins",
      ),
      headline2: new TextStyle(
        fontFamily: "Poppins",
      ),
      headline3: new TextStyle(
        fontFamily: "Poppins",
      ),
      headline4: new TextStyle(
        fontFamily: "Poppins",
      ),
      headline5: new TextStyle(
        fontFamily: "Poppins",
      ),
      headline6: new TextStyle(
        fontFamily: "Poppins",
      ),
      button: new TextStyle(
        fontFamily: "Poppins",
      ),
      caption: new TextStyle(
        fontFamily: "Poppins",
      ),
      overline: new TextStyle(
        fontFamily: "Poppins",
      ),
      subtitle1: new TextStyle(
        fontFamily: "Poppins",
      ),
      subtitle2: new TextStyle(
        fontFamily: "Poppins",
      ),
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
  );
}
