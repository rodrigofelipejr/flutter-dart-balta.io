import 'package:app_todo_2/components/button.widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Card(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/images/notification.png",
                  width: 250,
                ),
                Text(
                  "Olá desconhecido",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TDButton(
                  text: "Login com Google",
                  image: "assets/images/google.png",
                  callback: () {},
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
