import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:y_todo/src/feature/tasks/bloc/tasks_bloc.dart';
import 'package:y_todo/src/feature/tasks/domain/model/enum/task_filter.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

import 'mock_repository.dart';

void main() {
  group('TasksBloc test', () {
    late TasksBloc tasksBloc;
    MockTasksRepository mockRepository;

    setUp(() {
      mockRepository = MockTasksRepository();
      tasksBloc = TasksBloc(mockRepository, null);
    });

    blocTest<TasksBloc, TaskState>("Emits loading -> loaded",
        build: () => tasksBloc,
        wait: const Duration(seconds: 2),
        act: (bloc) => bloc.add(const TaskEvent.fetchTasks()),
        expect: () => [
              const TaskState.loading(tasks: [], filter: TaskFilter.all),
              TaskState.loaded(tasks: mockTasks, filter: TaskFilter.all)
            ]);

    tearDown(() {
      tasksBloc.close();
    });

    blocTest<TasksBloc, TaskState>(
        "Emits loading -> loaded with correct filter",
        build: () => tasksBloc,
        wait: const Duration(seconds: 2),
        act: (bloc) {
          bloc
            ..add(const TaskEvent.fetchTasks())
            ..add(const TaskEvent.toggleFilter());
        },
        expect: () => [
              const TaskState.loading(tasks: [], filter: TaskFilter.all),
               TaskState.loaded(
                  tasks: mockTasks, filter: TaskFilter.all),
              TaskState.loaded(
                  tasks: mockTasks, filter: TaskFilter.uncompletedOnly)
            ]);
    blocTest<TasksBloc, TaskState>("Save new task case",
        build: () => tasksBloc,
        wait: const Duration(seconds: 2),
        act: (bloc) {
          bloc..add(const TaskEvent.fetchTasks())
          ..add(TaskEvent.saveTask(Task.create('10')));
        },
        expect: () => [
              const TaskState.loading(tasks: [], filter: TaskFilter.all),
              TaskState.loaded(tasks: mockTasks, filter: TaskFilter.all),
              TaskState.loaded(tasks: mockTasks, filter: TaskFilter.all),
            ]);
    blocTest<TasksBloc, TaskState>("Delete task case",
        build: () => tasksBloc,
        wait: const Duration(seconds: 2),
        act: (bloc) {
          bloc..add(const TaskEvent.fetchTasks())
          ..add(TaskEvent.deleteTask(mockTasks[5]));
        },
        expect: () => [
              const TaskState.loading(tasks: [], filter: TaskFilter.all),
              TaskState.loaded(tasks: mockTasks, filter: TaskFilter.all),
              TaskState.loaded(tasks: mockTasks, filter: TaskFilter.all),
            ]);
  });
}
