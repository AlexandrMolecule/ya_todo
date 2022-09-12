// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskR _$TaskRFromJson(Map<String, dynamic> json) {
  return _TaskR.fromJson(json);
}

/// @nodoc
mixin _$TaskR {
  String get status => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;
  @JsonKey(name: "element")
  Task get task => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskRCopyWith<TaskR> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskRCopyWith<$Res> {
  factory $TaskRCopyWith(TaskR value, $Res Function(TaskR) then) =
      _$TaskRCopyWithImpl<$Res>;
  $Res call({String status, int revision, @JsonKey(name: "element") Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskRCopyWithImpl<$Res> implements $TaskRCopyWith<$Res> {
  _$TaskRCopyWithImpl(this._value, this._then);

  final TaskR _value;
  // ignore: unused_field
  final $Res Function(TaskR) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? revision = freezed,
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      task: task == freezed
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
abstract class _$$_TaskRCopyWith<$Res> implements $TaskRCopyWith<$Res> {
  factory _$$_TaskRCopyWith(_$_TaskR value, $Res Function(_$_TaskR) then) =
      __$$_TaskRCopyWithImpl<$Res>;
  @override
  $Res call({String status, int revision, @JsonKey(name: "element") Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TaskRCopyWithImpl<$Res> extends _$TaskRCopyWithImpl<$Res>
    implements _$$_TaskRCopyWith<$Res> {
  __$$_TaskRCopyWithImpl(_$_TaskR _value, $Res Function(_$_TaskR) _then)
      : super(_value, (v) => _then(v as _$_TaskR));

  @override
  _$_TaskR get _value => super._value as _$_TaskR;

  @override
  $Res call({
    Object? status = freezed,
    Object? revision = freezed,
    Object? task = freezed,
  }) {
    return _then(_$_TaskR(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskR extends _TaskR {
  const _$_TaskR(
      {required this.status,
      required this.revision,
      @JsonKey(name: "element") required this.task})
      : super._();

  factory _$_TaskR.fromJson(Map<String, dynamic> json) =>
      _$$_TaskRFromJson(json);

  @override
  final String status;
  @override
  final int revision;
  @override
  @JsonKey(name: "element")
  final Task task;

  @override
  String toString() {
    return 'TaskR(status: $status, revision: $revision, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskR &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.revision, revision) &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(revision),
      const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_TaskRCopyWith<_$_TaskR> get copyWith =>
      __$$_TaskRCopyWithImpl<_$_TaskR>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskRToJson(
      this,
    );
  }
}

abstract class _TaskR extends TaskR {
  const factory _TaskR(
      {required final String status,
      required final int revision,
      @JsonKey(name: "element") required final Task task}) = _$_TaskR;
  const _TaskR._() : super._();

  factory _TaskR.fromJson(Map<String, dynamic> json) = _$_TaskR.fromJson;

  @override
  String get status;
  @override
  int get revision;
  @override
  @JsonKey(name: "element")
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$$_TaskRCopyWith<_$_TaskR> get copyWith =>
      throw _privateConstructorUsedError;
}
