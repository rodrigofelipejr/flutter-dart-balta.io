import 'package:app_todo_2/components/button.widget.dart';
import 'package:app_todo_2/controllers/login.controller.dart';
import 'package:flutter/material.dart';

import 'home.view.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final controller = new LoginController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  var busy = false;

  handleSignIn() {
    setState(() {
      busy = true;
    });

    controller.login().then((value) {
      onSuccess();
    }).catchError((onError) {
      onError();
    }).whenComplete(() {
      onComplete();
    });
  }

  onSuccess() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeView(),
      ),
    );
  }

  onError() {
    var snackbar = new SnackBar(content: new Text("Falha no logiin"));
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  onComplete() {
    setState(() {
      busy = false;
    });
  }

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
