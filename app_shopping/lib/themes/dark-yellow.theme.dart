import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFFFFCC00);
const lightColor = const Color(0XFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData darkYellowTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    brightness: brightness,
    // textTheme: new TextTheme(
    // body1: new TextStyle(color: Colors.red),
    // display4: new TextStyle(fontSize: 78),
    // button: new TextStyle(color: Colors.green),
    //headline: new TextStyle(color: Colors.black),
    // ),
    // tabBarTheme:
    // accentIconTheme:
    // accentTextTheme:
    // appBarTheme:
    // bottomAppBarTheme:
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    // chipTheme:
    // dialogTheme:
    // floatingActionButtonTheme:
    // iconTheme:
    // inputDecorationTheme:
    // pageTransitionsTheme:
    // primaryIconTheme:
    // primaryTextTheme:
    // sliderTheme:
    primaryColor: primaryColor,
    accentColor: Colors.black26,
    // fontFamily: 'Montserrat',
    // buttonColor: Color(0xDD00C569),
    // scaffoldBackgroundColor: backgroundColor,
    // cardColor: Colors.white,
  );
}
