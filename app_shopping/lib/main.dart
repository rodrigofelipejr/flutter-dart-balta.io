import 'package:app_shopping/pages/tabs.page.dart';
import 'package:app_shopping/themes/dark-yellow.theme.dart';
import 'package:app_shopping/themes/dark.theme.dart';
import 'package:app_shopping/themes/light.theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
