import 'package:app_todo_2/models/todo-item.model.dart';
import 'package:mobx/mobx.dart';

class AppStore {
  @observable // anotação
  String currentState = "none";

  @observable
  bool busy = false;

  @observable
  ObservableList<TodoItem> todos = new ObservableList<TodoItem>();

  @action
  void changeSelected(String state) {
    currentState = state;
  }

  @action
  void add(TodoItem item) {
    todos.add(item);
  }

  @action
  void setTodos(ObservableList<TodoItem> items) {
    todos.addAll(items);
  }

  @action
  void clearTodos() {
    todos = new ObservableList<TodoItem>();
  }
}
