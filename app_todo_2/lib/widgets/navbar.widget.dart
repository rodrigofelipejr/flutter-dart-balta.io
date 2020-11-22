import 'package:app_todo_2/controllers/todo.controller.dart';
import 'package:app_todo_2/stores/app.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final controller = new TodoController(store);

    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Observer(
            builder: (_) => FlatButton(
              onPressed: () {
                controller.changeSelection("today");
              },
              child: Text(
                "Hoje",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: store.currentState == "today" ? FontWeight.bold : FontWeight.w100,
                ),
              ),
            ),
          ),
          Observer(
            builder: (_) => FlatButton(
              onPressed: () {
                controller.changeSelection("tomorrow");
              },
              child: Text(
                "Amanhã",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: store.currentState == "tomorrow" ? FontWeight.bold : FontWeight.w100,
                ),
              ),
            ),
          ),
          Observer(
            builder: (_) => FlatButton(
              onPressed: () {
                controller.changeSelection("all");
              },
              child: Text(
                "Todas",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: store.currentState == "all" ? FontWeight.bold : FontWeight.w100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
