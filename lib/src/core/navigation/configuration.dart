import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

class RouteConfiguration {
  bool isRoot;
  Task? task;
  RouteConfiguration(
    this.isRoot,
    this.task,
  );
  RouteConfiguration.isRoot()
      : isRoot = true,
        task = null;
  RouteConfiguration.editTask(Task? task)
      : isRoot = false,
        task = task;
}
