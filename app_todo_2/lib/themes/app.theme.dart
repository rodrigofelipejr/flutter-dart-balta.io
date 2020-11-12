import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFFfa4d73);
const accentColor = const Color(0xFF000000);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      bodyText1: new TextStyle(
        fontFamily: "Poppins",
      ),
      bodyText2: TextStyle(
        fontFamily: "Poppins",
      ),
      button: TextStyle(
        fontFamily: "Poppins",
      ),
      caption: TextStyle(
        fontFamily: "Poppins",
      ),
      //display1
      headline4: TextStyle(
        fontFamily: "Poppins",
      ),
      //display2
      headline3: TextStyle(
        fontFamily: "Poppins",
      ),
      //display3
      headline2: TextStyle(
        fontFamily: "Poppins",
      ),
      //display4
      headline1: TextStyle(
        fontFamily: "Poppins",
      ),
      //headline
      headline5: TextStyle(
        fontFamily: "Poppins",
      ),
      overline: TextStyle(
        fontFamily: "Poppins",
      ),
      //subhead
      subtitle1: TextStyle(
        fontFamily: "Poppins",
      ),
      //subtitle
      subtitle2: TextStyle(
        fontFamily: "Poppins",
      ),
      //title
      headline6: TextStyle(
        fontFamily: "Poppins",
      ),
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
    scaffoldBackgroundColor: Color(0xFFFAFAFA),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}
