import 'package:app_todo_2/models/todo-item.model.dart';

class AppStore {
  String currentState = "none";
  bool busy = false;
  List<TodoItem> todos = new List<TodoItem>();

  void changeSelected(String state) {
    currentState = state;
  }

  void add(TodoItem item) {
    todos.add(item);
  }

  void setTodos(List<TodoItem> items) {
    todos.addAll(items);
  }

  void clearTodos() {
    todos = new List<TodoItem>();
  }
}
