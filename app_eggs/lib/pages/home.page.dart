import 'package:app_eggs/blocs/type-buttons.widget.dart';
import 'package:app_eggs/widgets/action-buttons.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Perfect Eggs",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            //Eggs(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TypeButtons(),
            ),
            //Progress(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ActionButtons(),
            ),
          ],
        ),
      ),
    );
  }
}
