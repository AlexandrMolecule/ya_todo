// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskState {
  List<Task> get tasks => throw _privateConstructorUsedError;
  TaskFilter get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks, TaskFilter filter) loading,
    required TResult Function(List<Task> tasks, TaskFilter filter) loaded,
    required TResult Function(
            List<Task> tasks, TaskFilter filter, String errorMessage)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks, TaskFilter filter)? loading,
    TResult Function(List<Task> tasks, TaskFilter filter)? loaded,
    TResult Function(List<Task> tasks, TaskFilter filter, String errorMessage)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks, TaskFilter filter)? loading,
    TResult Function(List<Task> tasks, TaskFilter filter)? loaded,
    TResult Function(List<Task> tasks, TaskFilter filter, String errorMessage)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res>;
  $Res call({List<Task> tasks, TaskFilter filter});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res> implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  final TaskState _value;
  // ignore: unused_field
  final $Res Function(TaskState) _then;

  @override
  $Res call({
    Object? tasks = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
    ));
  }
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<Task> tasks, TaskFilter filter});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;

  @override
  $Res call({
    Object? tasks = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$_Loading(
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required final List<Task> tasks, required this.filter})
      : _tasks = tasks,
        super._();

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final TaskFilter filter;

  @override
  String toString() {
    return 'TaskState.loading(tasks: $tasks, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks, TaskFilter filter) loading,
    required TResult Function(List<Task> tasks, TaskFilter filter) loaded,
    required TResult Function(
            List<Task> tasks, TaskFilter filter, String errorMessage)
        failure,
  }) {
    return loading(tasks, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks, TaskFilter filter)? loading,
    TResult Function(List<Task> tasks, TaskFilter filter)? loaded,
    TResult Function(List<Task> tasks, TaskFilter filter, String errorMessage)?
        failure,
  }) {
    return loading?.call(tasks, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks, TaskFilter filter)? loading,
    TResult Function(List<Task> tasks, TaskFilter filter)? loaded,
    TResult Function(List<Task> tasks, TaskFilter filter, String errorMessage)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tasks, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends TaskState {
  const factory _Loading(
      {required final List<Task> tasks,
      required final TaskFilter filter}) = _$_Loading;
  const _Loading._() : super._();

  @override
  List<Task> get tasks;
  @override
  TaskFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  $Res call({List<Task> tasks, TaskFilter filter});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? tasks = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$_Loaded(
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
    ));
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded({required final List<Task> tasks, required this.filter})
      : _tasks = tasks,
        super._();

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final TaskFilter filter;

  @override
  String toString() {
    return 'TaskState.loaded(tasks: $tasks, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks, TaskFilter filter) loading,
    required TResult Function(List<Task> tasks, TaskFilter filter) loaded,
    required TResult Function(
            List<Task> tasks, TaskFilter filter, String errorMessage)
        failure,
  }) {
    return loaded(tasks, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks, TaskFilter filter)? loading,
    TResult Function(List<Task> tasks, TaskFilter filter)? loaded,
    TResult Function(List<Task> tasks, TaskFilter filter, String errorMessage)?
        failure,
  }) {
    return loaded?.call(tasks, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks, TaskFilter filter)? loading,
    TResult Function(List<Task> tasks, TaskFilter filter)? loaded,
    TResult Function(List<Task> tasks, TaskFilter filter, String errorMessage)?
        failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends TaskState {
  const factory _Loaded(
      {required final List<Task> tasks,
      required final TaskFilter filter}) = _$_Loaded;
  const _Loaded._() : super._();

  @override
  List<Task> get tasks;
  @override
  TaskFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  $Res call({List<Task> tasks, TaskFilter filter, String errorMessage});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? tasks = freezed,
    Object? filter = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Failure(
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(
      {required final List<Task> tasks,
      required this.filter,
      required this.errorMessage})
      : _tasks = tasks,
        super._();

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final TaskFilter filter;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TaskState.failure(tasks: $tasks, filter: $filter, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks, TaskFilter filter) loading,
    required TResult Function(List<Task> tasks, TaskFilter filter) loaded,
    required TResult Function(
            List<Task> tasks, TaskFilter filter, String errorMessage)
        failure,
  }) {
    return failure(tasks, filter, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks, TaskFilter filter)? loading,
    TResult Function(List<Task> tasks, TaskFilter filter)? loaded,
    TResult Function(List<Task> tasks, TaskFilter filter, String errorMessage)?
        failure,
  }) {
    return failure?.call(tasks, filter, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks, TaskFilter filter)? loading,
    TResult Function(List<Task> tasks, TaskFilter filter)? loaded,
    TResult Function(List<Task> tasks, TaskFilter filter, String errorMessage)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(tasks, filter, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends TaskState {
  const factory _Failure(
      {required final List<Task> tasks,
      required final TaskFilter filter,
      required final String errorMessage}) = _$_Failure;
  const _Failure._() : super._();

  @override
  List<Task> get tasks;
  @override
  TaskFilter get filter;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(Task task, bool? done) taskToggleDone,
    required TResult Function() toggleFilter,
    required TResult Function(Task task) deleteTask,
    required TResult Function(Task task) saveTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_TaskToggleDone value) taskToggleDone,
    required TResult Function(_ToggleFilter value) toggleFilter,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SaveTask value) saveTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res> implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  final TaskEvent _value;
  // ignore: unused_field
  final $Res Function(TaskEvent) _then;
}

/// @nodoc
abstract class _$$_FetchTasksCopyWith<$Res> {
  factory _$$_FetchTasksCopyWith(
          _$_FetchTasks value, $Res Function(_$_FetchTasks) then) =
      __$$_FetchTasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchTasksCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_FetchTasksCopyWith<$Res> {
  __$$_FetchTasksCopyWithImpl(
      _$_FetchTasks _value, $Res Function(_$_FetchTasks) _then)
      : super(_value, (v) => _then(v as _$_FetchTasks));

  @override
  _$_FetchTasks get _value => super._value as _$_FetchTasks;
}

/// @nodoc

class _$_FetchTasks implements _FetchTasks {
  const _$_FetchTasks();

  @override
  String toString() {
    return 'TaskEvent.fetchTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchTasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(Task task, bool? done) taskToggleDone,
    required TResult Function() toggleFilter,
    required TResult Function(Task task) deleteTask,
    required TResult Function(Task task) saveTask,
  }) {
    return fetchTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
  }) {
    return fetchTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
    required TResult orElse(),
  }) {
    if (fetchTasks != null) {
      return fetchTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_TaskToggleDone value) taskToggleDone,
    required TResult Function(_ToggleFilter value) toggleFilter,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SaveTask value) saveTask,
  }) {
    return fetchTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
  }) {
    return fetchTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
    required TResult orElse(),
  }) {
    if (fetchTasks != null) {
      return fetchTasks(this);
    }
    return orElse();
  }
}

abstract class _FetchTasks implements TaskEvent {
  const factory _FetchTasks() = _$_FetchTasks;
}

/// @nodoc
abstract class _$$_TaskToggleDoneCopyWith<$Res> {
  factory _$$_TaskToggleDoneCopyWith(
          _$_TaskToggleDone value, $Res Function(_$_TaskToggleDone) then) =
      __$$_TaskToggleDoneCopyWithImpl<$Res>;
  $Res call({Task task, bool? done});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TaskToggleDoneCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_TaskToggleDoneCopyWith<$Res> {
  __$$_TaskToggleDoneCopyWithImpl(
      _$_TaskToggleDone _value, $Res Function(_$_TaskToggleDone) _then)
      : super(_value, (v) => _then(v as _$_TaskToggleDone));

  @override
  _$_TaskToggleDone get _value => super._value as _$_TaskToggleDone;

  @override
  $Res call({
    Object? task = freezed,
    Object? done = freezed,
  }) {
    return _then(_$_TaskToggleDone(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_TaskToggleDone implements _TaskToggleDone {
  const _$_TaskToggleDone({required this.task, this.done});

  @override
  final Task task;
  @override
  final bool? done;

  @override
  String toString() {
    return 'TaskEvent.taskToggleDone(task: $task, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskToggleDone &&
            const DeepCollectionEquality().equals(other.task, task) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(task),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  _$$_TaskToggleDoneCopyWith<_$_TaskToggleDone> get copyWith =>
      __$$_TaskToggleDoneCopyWithImpl<_$_TaskToggleDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(Task task, bool? done) taskToggleDone,
    required TResult Function() toggleFilter,
    required TResult Function(Task task) deleteTask,
    required TResult Function(Task task) saveTask,
  }) {
    return taskToggleDone(task, done);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
  }) {
    return taskToggleDone?.call(task, done);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
    required TResult orElse(),
  }) {
    if (taskToggleDone != null) {
      return taskToggleDone(task, done);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_TaskToggleDone value) taskToggleDone,
    required TResult Function(_ToggleFilter value) toggleFilter,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SaveTask value) saveTask,
  }) {
    return taskToggleDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
  }) {
    return taskToggleDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
    required TResult orElse(),
  }) {
    if (taskToggleDone != null) {
      return taskToggleDone(this);
    }
    return orElse();
  }
}

abstract class _TaskToggleDone implements TaskEvent {
  const factory _TaskToggleDone({required final Task task, final bool? done}) =
      _$_TaskToggleDone;

  Task get task;
  bool? get done;
  @JsonKey(ignore: true)
  _$$_TaskToggleDoneCopyWith<_$_TaskToggleDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleFilterCopyWith<$Res> {
  factory _$$_ToggleFilterCopyWith(
          _$_ToggleFilter value, $Res Function(_$_ToggleFilter) then) =
      __$$_ToggleFilterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleFilterCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_ToggleFilterCopyWith<$Res> {
  __$$_ToggleFilterCopyWithImpl(
      _$_ToggleFilter _value, $Res Function(_$_ToggleFilter) _then)
      : super(_value, (v) => _then(v as _$_ToggleFilter));

  @override
  _$_ToggleFilter get _value => super._value as _$_ToggleFilter;
}

/// @nodoc

class _$_ToggleFilter implements _ToggleFilter {
  const _$_ToggleFilter();

  @override
  String toString() {
    return 'TaskEvent.toggleFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(Task task, bool? done) taskToggleDone,
    required TResult Function() toggleFilter,
    required TResult Function(Task task) deleteTask,
    required TResult Function(Task task) saveTask,
  }) {
    return toggleFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
  }) {
    return toggleFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
    required TResult orElse(),
  }) {
    if (toggleFilter != null) {
      return toggleFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_TaskToggleDone value) taskToggleDone,
    required TResult Function(_ToggleFilter value) toggleFilter,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SaveTask value) saveTask,
  }) {
    return toggleFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
  }) {
    return toggleFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
    required TResult orElse(),
  }) {
    if (toggleFilter != null) {
      return toggleFilter(this);
    }
    return orElse();
  }
}

abstract class _ToggleFilter implements TaskEvent {
  const factory _ToggleFilter() = _$_ToggleFilter;
}

/// @nodoc
abstract class _$$_DeleteTaskCopyWith<$Res> {
  factory _$$_DeleteTaskCopyWith(
          _$_DeleteTask value, $Res Function(_$_DeleteTask) then) =
      __$$_DeleteTaskCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_DeleteTaskCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_DeleteTaskCopyWith<$Res> {
  __$$_DeleteTaskCopyWithImpl(
      _$_DeleteTask _value, $Res Function(_$_DeleteTask) _then)
      : super(_value, (v) => _then(v as _$_DeleteTask));

  @override
  _$_DeleteTask get _value => super._value as _$_DeleteTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_DeleteTask(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_DeleteTask implements _DeleteTask {
  const _$_DeleteTask(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEvent.deleteTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteTaskCopyWith<_$_DeleteTask> get copyWith =>
      __$$_DeleteTaskCopyWithImpl<_$_DeleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(Task task, bool? done) taskToggleDone,
    required TResult Function() toggleFilter,
    required TResult Function(Task task) deleteTask,
    required TResult Function(Task task) saveTask,
  }) {
    return deleteTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
  }) {
    return deleteTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_TaskToggleDone value) taskToggleDone,
    required TResult Function(_ToggleFilter value) toggleFilter,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SaveTask value) saveTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements TaskEvent {
  const factory _DeleteTask(final Task task) = _$_DeleteTask;

  Task get task;
  @JsonKey(ignore: true)
  _$$_DeleteTaskCopyWith<_$_DeleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveTaskCopyWith<$Res> {
  factory _$$_SaveTaskCopyWith(
          _$_SaveTask value, $Res Function(_$_SaveTask) then) =
      __$$_SaveTaskCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_SaveTaskCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_SaveTaskCopyWith<$Res> {
  __$$_SaveTaskCopyWithImpl(
      _$_SaveTask _value, $Res Function(_$_SaveTask) _then)
      : super(_value, (v) => _then(v as _$_SaveTask));

  @override
  _$_SaveTask get _value => super._value as _$_SaveTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_SaveTask(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_SaveTask implements _SaveTask {
  const _$_SaveTask(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEvent.saveTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_SaveTaskCopyWith<_$_SaveTask> get copyWith =>
      __$$_SaveTaskCopyWithImpl<_$_SaveTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(Task task, bool? done) taskToggleDone,
    required TResult Function() toggleFilter,
    required TResult Function(Task task) deleteTask,
    required TResult Function(Task task) saveTask,
  }) {
    return saveTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
  }) {
    return saveTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(Task task, bool? done)? taskToggleDone,
    TResult Function()? toggleFilter,
    TResult Function(Task task)? deleteTask,
    TResult Function(Task task)? saveTask,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_TaskToggleDone value) taskToggleDone,
    required TResult Function(_ToggleFilter value) toggleFilter,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SaveTask value) saveTask,
  }) {
    return saveTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
  }) {
    return saveTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_TaskToggleDone value)? taskToggleDone,
    TResult Function(_ToggleFilter value)? toggleFilter,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SaveTask value)? saveTask,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(this);
    }
    return orElse();
  }
}

abstract class _SaveTask implements TaskEvent {
  const factory _SaveTask(final Task task) = _$_SaveTask;

  Task get task;
  @JsonKey(ignore: true)
  _$$_SaveTaskCopyWith<_$_SaveTask> get copyWith =>
      throw _privateConstructorUsedError;
}
