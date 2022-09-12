import 'package:y_todo/src/feature/tasks/data/repository/tasks_repository.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

List<Task> mockTasks = [
  Task.create('0'),
  Task.create('1'),
  Task.create('2'),
  Task.create('3'),
  Task.create('4'),
  Task.create('5'),
  Task.create('6'),
  Task.create('7'),
  Task.create('8'),
  Task.create('9'),
];

class MockTasksRepository implements ITasksRepository {
  @override
  Future<void> addTask(Task task) async {
    await Future.delayed(const Duration(seconds: 1));
    mockTasks.add(task);
  }

  @override
  Task createTask() {
    return Task.create();
  }

  @override
  Future<void> deleteTask(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    mockTasks.removeWhere((element) => element.id == id);
  }

  @override
  Future<List<Task>> getAllTasks() async {
    await Future.delayed(const Duration(seconds: 1));
    return mockTasks;
  }

  @override
  Future<void> saveTask(Task task) async {
    if (mockTasks.contains(task)) {
      await updateTask(task);
    } else {
      await addTask(task);
    }
  }

  @override
  Future<void> updateTask(Task task) async {
    await Future.delayed(const Duration(seconds: 1));
    final taskIndex = mockTasks.indexWhere((element) => element.id == task.id);
    mockTasks.replaceRange(taskIndex, taskIndex + 1, [task]);
  }
}
