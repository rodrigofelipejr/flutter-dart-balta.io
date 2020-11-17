import 'package:app_todo_2/themes/app.theme.dart';
import 'package:app_todo_2/views/create-todo.view.dart';
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
      home: CreateTodoView(),
    );
  }
}
