import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_todo/src/feature/tasks/domain/model/enum/importance_enum.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

part 'task_edit_bloc.freezed.dart';

class TaskEditBloc extends Bloc<TaskEditEvent, TaskEditState> {
  TaskEditBloc({Task? initialTask})
      : super(TaskEditState.initial(
          initialTask: initialTask,
          text: initialTask?.text ?? '',
          color: initialTask?.color,
          deadline: initialTask?.deadline,
          importance: initialTask?.importance ?? Importance.basic,
          done: initialTask?.done ?? false,
          createdAt: initialTask?.createdAt ?? DateTime.now(),
          changedAt: initialTask?.changedAt ?? DateTime.now(),
        )) {
    on<TaskEditEvent>((event, emit) => event.map<Future<void>>(
          textChange: (event) => _textChange(event, emit),
          cancel: (event) => _cancel(event, emit),
          importanceChange: (event) => _importanceChange(event, emit),
          deadlineChange: (event) => _deadlineChange(event, emit),
          delete: (event) => _delete(event, emit),
          save: (event) => _save(event, emit),
        ));
  }

  Future<void> _textChange(
      _TextChange event, Emitter<TaskEditState> emit) async {
    emit(state.copyWith(text: event.text));
  }

  Future<void> _cancel(_Cancel event, Emitter<TaskEditState> emit) async {}
  Future<void> _delete(_DeleteEvent event, Emitter<TaskEditState> emit) async {
    emit(TaskEditState.delete(
      initialTask: state.initialTask,
      text: state.text,
      done: state.done,
      createdAt: state.initialTask != null ? state.createdAt : DateTime.now(),
      changedAt: DateTime.now(),
      importance: state.importance,
      deadline: state.deadline,
    ));
  }

  Future<void> _save(_SaveEvent event, Emitter<TaskEditState> emit) async {
    if (state.text.isNotEmpty) {
      emit(TaskEditState.save(
        initialTask: state.initialTask?.copyWith(
          text: state.text,
          done: state.done,
          createdAt:
              state.initialTask != null ? state.createdAt : DateTime.now(),
          changedAt: DateTime.now(),
          importance: state.importance,
          deadline: state.deadline,
        ),
        text: state.text,
        done: state.done,
        createdAt: state.initialTask != null ? state.createdAt : DateTime.now(),
        changedAt: DateTime.now(),
        importance: state.importance,
        deadline: state.deadline,
      ));
    } else {
      emit(TaskEditState.error(
          text: state.text,
          importance: state.importance,
          done: state.done,
          createdAt: state.createdAt,
          changedAt: state.changedAt,
          errorMsg: "Fill all fields"));
    }
  }

  Future<void> _importanceChange(
      _ImportanceChange event, Emitter<TaskEditState> emit) async {
    emit(state.copyWith(importance: event.importance));
  }

  Future<void> _deadlineChange(
      _DeadlineChange event, Emitter<TaskEditState> emit) async {
    emit(state.copyWith(deadline: event.deadline));
  }
}

@freezed
class TaskEditEvent with _$TaskEditEvent {
  const factory TaskEditEvent.textChange({required final String text}) =
      _TextChange;
  const factory TaskEditEvent.cancel() = _Cancel;
  const factory TaskEditEvent.importanceChange(
      {required final Importance importance}) = _ImportanceChange;
  const factory TaskEditEvent.deadlineChange({final DateTime? deadline}) =
      _DeadlineChange;
  const factory TaskEditEvent.delete() = _DeleteEvent;
  const factory TaskEditEvent.save() = _SaveEvent;
}

@freezed
class TaskEditState with _$TaskEditState {
  const TaskEditState._();

  bool get hasError => maybeMap<bool>(orElse: () => false, error: (_) => true);
  bool get isNewTask => initialTask == null;

  bool get hasDeadline =>  deadline != null;

  bool get isSave => maybeMap(orElse: () => false, save: (_) => true);

  bool get isDelete => maybeMap(orElse: () => false, delete: (_) => true);

  bool get mustLeave =>
      maybeMap(orElse: () => false, save: (_) => true, delete: (_) => true);

  const factory TaskEditState.initial({
    final Task? initialTask,
    required final String text,
    final String? color,
    required final Importance importance,
    final DateTime? deadline,
    required final bool done,
    required final DateTime createdAt,
    required final DateTime changedAt,
    final String? errorMsg,
  }) = _Initial;
  const factory TaskEditState.error({
    final Task? initialTask,
    required final String text,
    final String? color,
    required final Importance importance,
    final DateTime? deadline,
    required final bool done,
    required final DateTime createdAt,
    required final DateTime changedAt,
    required final String errorMsg,
  }) = _Error;
  const factory TaskEditState.save({
    final Task? initialTask,
    required final String text,
    final String? color,
    required final Importance importance,
    final DateTime? deadline,
    required final bool done,
    required final DateTime createdAt,
    required final DateTime changedAt,
    final String? errorMsg,
  }) = _Save;
  const factory TaskEditState.delete({
    final Task? initialTask,
    required final String text,
    final String? color,
    required final Importance importance,
    final DateTime? deadline,
    required final bool done,
    required final DateTime createdAt,
    required final DateTime changedAt,
    final String? errorMsg,
  }) = _Delete;
}
