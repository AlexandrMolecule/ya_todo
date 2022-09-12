import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

enum TaskFilter { all, uncompletedOnly }

extension TaskFilterDefault on TaskFilter {
  bool apply(Task task) {
    switch (this) {
      case TaskFilter.all:
        return true;
      case TaskFilter.uncompletedOnly:
        return !task.done;
      default:
        return true;
    }
  }

  Iterable<Task> applyAll(Iterable<Task> todos) {
    return todos.where(apply);
  }
}
