import 'package:app_todo_2/widgets/navbar.widget.dart';
import 'package:app_todo_2/widgets/user-card.widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UserCard(),
          NavBar(),
        ],
      ),
    );
  }
}
