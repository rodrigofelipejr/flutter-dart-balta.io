import 'package:contacts/android/styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.fingerprint,
              size: 72,
              color: accentColor,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Meu Contatos",
              style: TextStyle(
                fontSize: 24,
                color: accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
