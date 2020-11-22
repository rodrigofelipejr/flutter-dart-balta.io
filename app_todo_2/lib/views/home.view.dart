import 'package:app_todo_2/controllers/todo.controller.dart';
import 'package:app_todo_2/stores/app.store.dart';
import 'package:app_todo_2/widgets/navbar.widget.dart';
import 'package:app_todo_2/widgets/todo-list.widget.dart';
import 'package:app_todo_2/widgets/user-card.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final controller = new TodoController(store);

    // Só ocorre na primeira vez que o app rodar
    if (store.currentState == "none") {
      controller.changeSelection("today");
    }

    return Scaffold(
      body: Column(
        children: [
          UserCard(),
          NavBar(),
          Expanded(
            child: Container(
              child: TodoList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
