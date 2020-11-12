import 'package:app_todo_2/components/button.widget.dart';
import 'package:app_todo_2/themes/app.theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todos',
      theme: appTheme(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: cButton(
          text: "Teste",
          callback: () {},
          width: 300,
          image: "assets/images/google.png",
        ),
      ),
    );
  }
}
