import 'package:app_eggs/widgets/button.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Button(
              label: "Teste",
              selected: true,
              callback: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Button(
              label: "Teste",
              callback: () {},
            )
          ],
        ),
      ),
    );
  }
}
