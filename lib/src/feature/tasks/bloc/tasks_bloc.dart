import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_todo/src/core/domain/exception/api_exception.dart';
import 'package:y_todo/src/feature/tasks/data/repository/tasks_repository.dart';
import 'package:y_todo/src/feature/tasks/domain/model/enum/task_filter.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TaskEvent, TaskState> {
  final ITasksRepository _repository;
  final FirebaseAnalytics? analytics;
  TasksBloc(this._repository, this.analytics)
      : super(
          const TaskState.loaded(tasks: [], filter: TaskFilter.all),
        ) {
    on<TaskEvent>((event, emit) => event.map<Future<void>>(
          fetchTasks: (event) => _fetchTasks(event, emit),
          taskToggleDone: (event) => _taskToggleDone(event, emit),
          toggleFilter: (event) => _toggleFilter(event, emit),
          deleteTask: (event) => _deleteTask(event, emit),
          saveTask: (event) => _saveTask(event, emit),
        ), transformer: sequential());
  }

  Future<void> _fetchTasks(_FetchTasks event, Emitter<TaskState> emit) async {
    try {
      emit(TaskState.loading(tasks: state.tasks, filter: state.filter));
      final tasks = await _repository.getAllTasks();
      emit(TaskState.loaded(tasks: tasks, filter: state.filter));
    } on ApiClientException catch (e) {
      if (e.type == ApiClientExceptionType.auth) {
        emit(TaskState.failure(
            tasks: state.tasks,
            filter: state.filter,
            errorMessage: "Auth error, check your token"));
        rethrow;
      } else if (e.type == ApiClientExceptionType.noElement) {
        emit(TaskState.failure(
            tasks: state.tasks,
            filter: state.filter,
            errorMessage: "Incorrect request, please solve it & try again"));
        rethrow;
      } else {
        emit(TaskState.failure(
            tasks: state.tasks,
            filter: state.filter,
            errorMessage: "Unexcpected error, try again later"));
        rethrow;
      }
    } on Object catch (e) {
      emit(TaskState.failure(
          tasks: state.tasks,
          filter: state.filter,
          errorMessage: "Unexcpected error, try again later $e"));
      rethrow;  
    }
  }

  Future<void> _taskToggleDone(
      _TaskToggleDone event, Emitter<TaskState> emit) async {
    try {
      final newTask = event.task.copyWith(done: event.done ?? !event.task.done);
      emit(
        state.copyWith(
          tasks: List.of(state.tasks.map((e) {
            if (e.id == newTask.id) {
              return e.copyWith(done: newTask.done, changedAt: DateTime.now());
            }
            return e;
          }).toList()),
        ),
      );
      await _repository.saveTask(newTask);
      if (event.done != null && event.done!) {
        await analytics?.logEvent(name: "task_complete", parameters: {
          "task_text": event.task.text,
          "task_id": event.task.id,
        });
      }
    } on Object catch (e) {
      emit(TaskState.failure(
          tasks: state.tasks,
          filter: state.filter,
          errorMessage: "Unexcpected error, try again later $e"));
      rethrow;
    }
  }

  Future<void> _deleteTask(_DeleteTask event, Emitter<TaskState> emit) async {
    try {
      emit(state.copyWith(
          tasks: List.of(state.tasks)
            ..remove(state.tasks
                .where((element) => element.id == event.task.id)
                .first)));
      await _repository.deleteTask(event.task.id);
      await analytics?.logEvent(name: "delete_task", parameters: {
        "task_text": event.task.text,
        "task_id": event.task.id,
      });
    } on Object catch (e) {
      emit(TaskState.failure(
          tasks: state.tasks,
          filter: state.filter,
          errorMessage: "Unexcpected error, try again later $e"));
      rethrow;
    }
  }

  Future<void> _toggleFilter(
      _ToggleFilter event, Emitter<TaskState> emit) async {
    emit(state.copyWith(
        filter: state.filter == TaskFilter.all
            ? TaskFilter.uncompletedOnly
            : TaskFilter.all));
  }

  Future<void> _saveTask(_SaveTask event, Emitter<TaskState> emit) async {
    final task = event.task;
    final taskIndex =
        state.tasks.indexWhere((element) => element.id == task.id);
    try {
      if (taskIndex != -1) {
        emit(state.copyWith(
          tasks: List.of(state.tasks)
            ..replaceRange(taskIndex, taskIndex + 1, [task]),
        )
            // List.of(state.tasks)
            //   ..remove(
            //       state.tasks.where((element) => element.id == task.id).first)
            //   ..add(task),
            );
        await analytics?.logEvent(name: "update_task", parameters: {
          "task_text": event.task.text,
          "task_id": event.task.id,
        });
      } else {
        emit(state.copyWith(
          tasks: List.of(state.tasks)..add(task),
        ));
        await analytics?.logEvent(name: "create_task", parameters: {
          "task_text": event.task.text,
          "task_id": event.task.id,
        });
      }
      await _repository.saveTask(task);
    } on Object catch (e) {
      emit(TaskState.failure(
          tasks: state.tasks,
          filter: state.filter,
          errorMessage: "Unexcpected error, try again later $e"));
      rethrow;
    }
  }
}

@freezed
class TaskState with _$TaskState {
  const TaskState._();

  List<Task> get filteredTasks => filter.applyAll(tasks).toList();
  bool get hasError =>
      maybeMap<bool>(orElse: () => false, failure: (_) => true);

  bool get isLoading =>
      maybeMap<bool>(loading: (value) => true, orElse: () => false);

  bool get filterAll => filter == TaskFilter.all;

  int get taskCount => tasks.where((e) => e.done).length;

  const factory TaskState.loading(
      {required final List<Task> tasks,
      required final TaskFilter filter}) = _Loading;

  const factory TaskState.loaded({
    required final List<Task> tasks,
    required final TaskFilter filter,
  }) = _Loaded;

  const factory TaskState.failure(
      {required final List<Task> tasks,
      required final TaskFilter filter,
      required final String errorMessage}) = _Failure;
}

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.fetchTasks() = _FetchTasks;
  const factory TaskEvent.taskToggleDone(
      {required final Task task, final bool? done}) = _TaskToggleDone;
  const factory TaskEvent.toggleFilter() = _ToggleFilter;
  const factory TaskEvent.deleteTask(Task task) = _DeleteTask;
  const factory TaskEvent.saveTask(Task task) = _SaveTask;
}
