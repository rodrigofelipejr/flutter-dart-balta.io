import 'package:app_todo_2/themes/app.theme.dart';
import 'package:flutter/material.dart';

import 'views/login.view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todos',
      theme: appTheme(),
      home: LoginView(),
    );
  }
}
