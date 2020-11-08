import 'package:contacts/android/styles.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts',
      theme: androidTheme(),
      home: Scaffold(
        body: Text("OK"),
      ),
    );
  }
}
