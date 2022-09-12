// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tasks,
    required TResult Function(Task? task) editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? tasks,
    TResult Function(Task? task)? editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tasks,
    TResult Function(Task? task)? editTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_EditTask value) editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tasks value)? tasks,
    TResult Function(_EditTask value)? editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tasks value)? tasks,
    TResult Function(_EditTask value)? editTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;
}

/// @nodoc
abstract class _$$_TasksCopyWith<$Res> {
  factory _$$_TasksCopyWith(_$_Tasks value, $Res Function(_$_Tasks) then) =
      __$$_TasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TasksCopyWithImpl<$Res> extends _$NavigationStateCopyWithImpl<$Res>
    implements _$$_TasksCopyWith<$Res> {
  __$$_TasksCopyWithImpl(_$_Tasks _value, $Res Function(_$_Tasks) _then)
      : super(_value, (v) => _then(v as _$_Tasks));

  @override
  _$_Tasks get _value => super._value as _$_Tasks;
}

/// @nodoc

class _$_Tasks implements _Tasks {
  _$_Tasks();

  @override
  String toString() {
    return 'NavigationState.tasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Tasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tasks,
    required TResult Function(Task? task) editTask,
  }) {
    return tasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? tasks,
    TResult Function(Task? task)? editTask,
  }) {
    return tasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tasks,
    TResult Function(Task? task)? editTask,
    required TResult orElse(),
  }) {
    if (tasks != null) {
      return tasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_EditTask value) editTask,
  }) {
    return tasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tasks value)? tasks,
    TResult Function(_EditTask value)? editTask,
  }) {
    return tasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tasks value)? tasks,
    TResult Function(_EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (tasks != null) {
      return tasks(this);
    }
    return orElse();
  }
}

abstract class _Tasks implements NavigationState {
  factory _Tasks() = _$_Tasks;
}

/// @nodoc
abstract class _$$_EditTaskCopyWith<$Res> {
  factory _$$_EditTaskCopyWith(
          _$_EditTask value, $Res Function(_$_EditTask) then) =
      __$$_EditTaskCopyWithImpl<$Res>;
  $Res call({Task? task});

  $TaskCopyWith<$Res>? get task;
}

/// @nodoc
class __$$_EditTaskCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$$_EditTaskCopyWith<$Res> {
  __$$_EditTaskCopyWithImpl(
      _$_EditTask _value, $Res Function(_$_EditTask) _then)
      : super(_value, (v) => _then(v as _$_EditTask));

  @override
  _$_EditTask get _value => super._value as _$_EditTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_EditTask(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task?,
    ));
  }

  @override
  $TaskCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_EditTask implements _EditTask {
  _$_EditTask({this.task});

  @override
  final Task? task;

  @override
  String toString() {
    return 'NavigationState.editTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_EditTaskCopyWith<_$_EditTask> get copyWith =>
      __$$_EditTaskCopyWithImpl<_$_EditTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tasks,
    required TResult Function(Task? task) editTask,
  }) {
    return editTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? tasks,
    TResult Function(Task? task)? editTask,
  }) {
    return editTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tasks,
    TResult Function(Task? task)? editTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_EditTask value) editTask,
  }) {
    return editTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tasks value)? tasks,
    TResult Function(_EditTask value)? editTask,
  }) {
    return editTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tasks value)? tasks,
    TResult Function(_EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(this);
    }
    return orElse();
  }
}

abstract class _EditTask implements NavigationState {
  factory _EditTask({final Task? task}) = _$_EditTask;

  Task? get task;
  @JsonKey(ignore: true)
  _$$_EditTaskCopyWith<_$_EditTask> get copyWith =>
      throw _privateConstructorUsedError;
}
