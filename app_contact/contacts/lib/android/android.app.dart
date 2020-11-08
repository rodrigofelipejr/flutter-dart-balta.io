import 'package:contacts/android/styles.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts',
      theme: androidTheme(),
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text("Testando a fonte"),
            RaisedButton(
              onPressed: () {},
              child: Text("Clique aqui"),
            )
          ],
        ),
      ),
    );
  }
}
