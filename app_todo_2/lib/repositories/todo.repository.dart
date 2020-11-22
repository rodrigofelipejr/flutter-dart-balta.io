import 'package:app_todo_2/models/todo-item.model.dart';

class TodoRepository {
  Future<List<TodoItem>> getTodayTodos() async {
    var todos = new List<TodoItem>();
    todos.add(
      new TodoItem(
        id: 123456,
        title: "Hoje",
        done: false,
        date: DateTime.now(),
      ),
    );

    await Future.delayed(const Duration(milliseconds: 1500), () {});
    return todos;
  }

  Future<List<TodoItem>> getTomorrowTodos() async {
    var todos = new List<TodoItem>();
    todos.add(
      new TodoItem(
        id: 123457,
        title: "Amanhã",
        done: false,
        date: DateTime.now(),
      ),
    );

    await Future.delayed(const Duration(milliseconds: 1500), () {});
    return todos;
  }

  Future<List<TodoItem>> getAllTodos() async {
    var todos = new List<TodoItem>();
    todos.add(
      new TodoItem(
        id: 123456,
        title: "Hoje",
        done: false,
        date: DateTime.now(),
      ),
    );

    todos.add(
      new TodoItem(
        id: 123457,
        title: "Amanhã",
        done: false,
        date: DateTime.now(),
      ),
    );

    await Future.delayed(const Duration(milliseconds: 1500), () {});
    return todos;
  }

  Future<List<TodoItem>> add(TodoItem item) async {}
  Future<List<TodoItem>> maskAsDone(TodoItem item) async {}
}
