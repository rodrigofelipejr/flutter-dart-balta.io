import 'dart:io';

import 'package:app_todo_2/models/todo-item.model.dart';
import 'package:dio/dio.dart';

import '../user.dart';

class TodoRepository {
  Future<List<TodoItem>> getTodayTodos() async {
    var todos = new List<TodoItem>();
    todos.add(
      new TodoItem(
        id: "123456",
        title: "Hoje",
        done: false,
        date: DateTime.now(),
      ),
    );

    await Future.delayed(const Duration(milliseconds: 1500), () {});
    return todos;

    var url = "https://10.0.2.2:5001/v1/todos/undone/today";

    Response response = await Dio().get(
      url,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
      ),
    );

    return (response.data as List).map((todos) => TodoItem.fromJson(todos)).toList();
  }

  Future<List<TodoItem>> getTomorrowTodos() async {
    var url = "https://10.0.2.2:5001/v1/todos/undone/tomorrow";

    Response response = await Dio().get(
      url,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
      ),
    );

    return (response.data as List).map((todos) => TodoItem.fromJson(todos)).toList();
  }

  Future<List<TodoItem>> getAllTodos() async {
    var url = "https://10.0.2.2:5001/v1/todos";

    Response response = await Dio().get(
      url,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
      ),
    );

    return (response.data as List).map((todos) => TodoItem.fromJson(todos)).toList();
  }

  Future<TodoItem> add(TodoItem item) async {
    var url = "https://10.0.2.2:5001/v1/todos";

    try {
      Response response = await Dio().post(
        url,
        data: item,
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
        ),
      );
      return TodoItem.fromJson(response.data["data"]);
    } catch (e) {
      return null;
    }
  }

  Future<TodoItem> maskAsDone(TodoItem item) async {
    var url = "https://10.0.2.2:5001/v1/todos/mark-as-done";

    try {
      Response response = await Dio().put(
        url,
        data: item,
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
        ),
      );
      return TodoItem.fromJson(response.data["data"]);
    } catch (e) {
      return null;
    }
  }
}
