import 'package:app_todo_2/models/todo-item.model.dart';
import 'package:mobx/mobx.dart';
part 'app.store.g.dart'; /* esta classe esta dividida em duas pastes */

// app.store.g.dart (g => generator)
// assa aqui vamos distribuir, (_$AppStore vem do app.store.g.dart -> automaticamente (prefixo _$) + nomme da classe)
class AppStore = _AppStore with _$AppStore;

// with -> mixin?
// _ pq ela vai ser privada, não será distrbuida e sim a junção dela
abstract class _AppStore with Store {
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
