import 'package:app_eggs/pages/splash.page.dart';
import 'package:app_eggs/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfect Eggs',
      theme: appTheme(),
      home: SplashPage(),
    );
  }
}
