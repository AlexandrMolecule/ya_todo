// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'color', includeIfNull: true)
  String? get color => throw _privateConstructorUsedError;
  Importance get importance => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'deadline',
      fromJson: DateUtil.nullDateFromJson,
      toJson: DateUtil.toJson,
      includeIfNull: true)
  DateTime? get deadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'done', fromJson: BoolUtil.fromJson)
  bool get done => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'changed_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
  DateTime get changedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String text,
      @JsonKey(name: 'color', includeIfNull: true)
          String? color,
      Importance importance,
      @JsonKey(name: 'deadline', fromJson: DateUtil.nullDateFromJson, toJson: DateUtil.toJson, includeIfNull: true)
          DateTime? deadline,
      @JsonKey(name: 'done', fromJson: BoolUtil.fromJson)
          bool done,
      @JsonKey(name: 'created_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
          DateTime createdAt,
      @JsonKey(name: 'changed_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
          DateTime changedAt});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? color = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as Importance,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changedAt: changedAt == freezed
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String text,
      @JsonKey(name: 'color', includeIfNull: true)
          String? color,
      Importance importance,
      @JsonKey(name: 'deadline', fromJson: DateUtil.nullDateFromJson, toJson: DateUtil.toJson, includeIfNull: true)
          DateTime? deadline,
      @JsonKey(name: 'done', fromJson: BoolUtil.fromJson)
          bool done,
      @JsonKey(name: 'created_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
          DateTime createdAt,
      @JsonKey(name: 'changed_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
          DateTime changedAt});
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, (v) => _then(v as _$_Task));

  @override
  _$_Task get _value => super._value as _$_Task;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? color = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
  }) {
    return _then(_$_Task(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as Importance,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changedAt: changedAt == freezed
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Task extends _Task {
  const _$_Task(
      {required this.id,
      required this.text,
      @JsonKey(name: 'color', includeIfNull: true)
          this.color,
      required this.importance,
      @JsonKey(name: 'deadline', fromJson: DateUtil.nullDateFromJson, toJson: DateUtil.toJson, includeIfNull: true)
          this.deadline,
      @JsonKey(name: 'done', fromJson: BoolUtil.fromJson)
          required this.done,
      @JsonKey(name: 'created_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
          required this.createdAt,
      @JsonKey(name: 'changed_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
          required this.changedAt})
      : super._();

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  @JsonKey(name: 'color', includeIfNull: true)
  final String? color;
  @override
  final Importance importance;
  @override
  @JsonKey(
      name: 'deadline',
      fromJson: DateUtil.nullDateFromJson,
      toJson: DateUtil.toJson,
      includeIfNull: true)
  final DateTime? deadline;
  @override
  @JsonKey(name: 'done', fromJson: BoolUtil.fromJson)
  final bool done;
  @override
  @JsonKey(
      name: 'created_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
  final DateTime createdAt;
  @override
  @JsonKey(
      name: 'changed_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
  final DateTime changedAt;

  @override
  String toString() {
    return 'Task(id: $id, text: $text, color: $color, importance: $importance, deadline: $deadline, done: $done, createdAt: $createdAt, changedAt: $changedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.changedAt, changedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(changedAt));

  @JsonKey(ignore: true)
  @override
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskToJson(
      this,
    );
  }
}

abstract class _Task extends Task {
  const factory _Task(
      {required final String id,
      required final String text,
      @JsonKey(name: 'color', includeIfNull: true)
          final String? color,
      required final Importance importance,
      @JsonKey(name: 'deadline', fromJson: DateUtil.nullDateFromJson, toJson: DateUtil.toJson, includeIfNull: true)
          final DateTime? deadline,
      @JsonKey(name: 'done', fromJson: BoolUtil.fromJson)
          required final bool done,
      @JsonKey(name: 'created_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
          required final DateTime createdAt,
      @JsonKey(name: 'changed_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
          required final DateTime changedAt}) = _$_Task;
  const _Task._() : super._();

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  @JsonKey(name: 'color', includeIfNull: true)
  String? get color;
  @override
  Importance get importance;
  @override
  @JsonKey(
      name: 'deadline',
      fromJson: DateUtil.nullDateFromJson,
      toJson: DateUtil.toJson,
      includeIfNull: true)
  DateTime? get deadline;
  @override
  @JsonKey(name: 'done', fromJson: BoolUtil.fromJson)
  bool get done;
  @override
  @JsonKey(
      name: 'created_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
  DateTime get createdAt;
  @override
  @JsonKey(
      name: 'changed_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
  DateTime get changedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
