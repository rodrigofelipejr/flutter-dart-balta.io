import 'package:app_todo_2/models/todo-item.model.dart';
import 'package:app_todo_2/repositories/todo.repository.dart';
import 'package:app_todo_2/stores/app.store.dart';

class TodoController {
  AppStore _store;
  TodoRepository _repository;

  TodoController(AppStore store) {
    _store = store;
    _repository = new TodoRepository();
  }

  void changeSelection(String selection) {
    _store.clearTodos();

    switch (selection) {
      case "today":
        _store.busy = true;
        _store.changeSelected("today");
        _repository.getTodayTodos().then(
          (data) {
            _store.setTodos(data);
            _store.busy = false;
          },
        );
        break;
      case "tomorrow":
        _store.busy = true;
        _store.changeSelected("tomorrow");
        _repository.getTomorrowTodos().then(
          (data) {
            _store.setTodos(data);
            _store.busy = false;
          },
        );
        break;
      // all
      default:
        _store.busy = true;
        _store.changeSelected("all");
        _repository.getAllTodos().then(
          (data) {
            _store.setTodos(data);
            _store.busy = false;
          },
        );
        break;
    }
  }

  Future add(TodoItem item) async {
    _store.busy = true;
    await _repository.add(item);
    _store.busy = false;
    changeSelection(_store.currentState);
  }

  Future markAsDone(TodoItem item) async {
    _store.busy = true;
    await _repository.maskAsDone(item);
    _store.busy = false;
    changeSelection(_store.currentState);
  }
}
