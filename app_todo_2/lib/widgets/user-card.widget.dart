import 'package:app_todo_2/controllers/login.controller.dart';
import 'package:app_todo_2/views/login.view.dart';
import 'package:flutter/material.dart';

import '../components/avatar.widget.dart';
import '../user.dart';

class UserCard extends StatelessWidget {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 40,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new ExactAssetImage(
            "assets/images/notification.png",
          ),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: [
          TDAvatar(
            path: user.picture,
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            user.name,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 20,
            child: FlatButton(
              child: Text(
                "Sair",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                controller.logout().then(
                      (value) => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => LoginView(),
                          ),
                        )
                      },
                    );
              },
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
