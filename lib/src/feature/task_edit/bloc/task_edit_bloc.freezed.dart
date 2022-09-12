// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textChange,
    required TResult Function() cancel,
    required TResult Function(Importance importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() delete,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ImportanceChange value) importanceChange,
    required TResult Function(_DeadlineChange value) deadlineChange,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_SaveEvent value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditEventCopyWith<$Res> {
  factory $TaskEditEventCopyWith(
          TaskEditEvent value, $Res Function(TaskEditEvent) then) =
      _$TaskEditEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskEditEventCopyWithImpl<$Res>
    implements $TaskEditEventCopyWith<$Res> {
  _$TaskEditEventCopyWithImpl(this._value, this._then);

  final TaskEditEvent _value;
  // ignore: unused_field
  final $Res Function(TaskEditEvent) _then;
}

/// @nodoc
abstract class _$$_TextChangeCopyWith<$Res> {
  factory _$$_TextChangeCopyWith(
          _$_TextChange value, $Res Function(_$_TextChange) then) =
      __$$_TextChangeCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$_TextChangeCopyWithImpl<$Res>
    extends _$TaskEditEventCopyWithImpl<$Res>
    implements _$$_TextChangeCopyWith<$Res> {
  __$$_TextChangeCopyWithImpl(
      _$_TextChange _value, $Res Function(_$_TextChange) _then)
      : super(_value, (v) => _then(v as _$_TextChange));

  @override
  _$_TextChange get _value => super._value as _$_TextChange;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_TextChange(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextChange implements _TextChange {
  const _$_TextChange({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'TaskEditEvent.textChange(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextChange &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_TextChangeCopyWith<_$_TextChange> get copyWith =>
      __$$_TextChangeCopyWithImpl<_$_TextChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textChange,
    required TResult Function() cancel,
    required TResult Function(Importance importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() delete,
    required TResult Function() save,
  }) {
    return textChange(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
  }) {
    return textChange?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (textChange != null) {
      return textChange(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ImportanceChange value) importanceChange,
    required TResult Function(_DeadlineChange value) deadlineChange,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_SaveEvent value) save,
  }) {
    return textChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
  }) {
    return textChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) {
    if (textChange != null) {
      return textChange(this);
    }
    return orElse();
  }
}

abstract class _TextChange implements TaskEditEvent {
  const factory _TextChange({required final String text}) = _$_TextChange;

  String get text;
  @JsonKey(ignore: true)
  _$$_TextChangeCopyWith<_$_TextChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelCopyWith<$Res> {
  factory _$$_CancelCopyWith(_$_Cancel value, $Res Function(_$_Cancel) then) =
      __$$_CancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelCopyWithImpl<$Res> extends _$TaskEditEventCopyWithImpl<$Res>
    implements _$$_CancelCopyWith<$Res> {
  __$$_CancelCopyWithImpl(_$_Cancel _value, $Res Function(_$_Cancel) _then)
      : super(_value, (v) => _then(v as _$_Cancel));

  @override
  _$_Cancel get _value => super._value as _$_Cancel;
}

/// @nodoc

class _$_Cancel implements _Cancel {
  const _$_Cancel();

  @override
  String toString() {
    return 'TaskEditEvent.cancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Cancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textChange,
    required TResult Function() cancel,
    required TResult Function(Importance importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() delete,
    required TResult Function() save,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
  }) {
    return cancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ImportanceChange value) importanceChange,
    required TResult Function(_DeadlineChange value) deadlineChange,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_SaveEvent value) save,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements TaskEditEvent {
  const factory _Cancel() = _$_Cancel;
}

/// @nodoc
abstract class _$$_ImportanceChangeCopyWith<$Res> {
  factory _$$_ImportanceChangeCopyWith(
          _$_ImportanceChange value, $Res Function(_$_ImportanceChange) then) =
      __$$_ImportanceChangeCopyWithImpl<$Res>;
  $Res call({Importance importance});
}

/// @nodoc
class __$$_ImportanceChangeCopyWithImpl<$Res>
    extends _$TaskEditEventCopyWithImpl<$Res>
    implements _$$_ImportanceChangeCopyWith<$Res> {
  __$$_ImportanceChangeCopyWithImpl(
      _$_ImportanceChange _value, $Res Function(_$_ImportanceChange) _then)
      : super(_value, (v) => _then(v as _$_ImportanceChange));

  @override
  _$_ImportanceChange get _value => super._value as _$_ImportanceChange;

  @override
  $Res call({
    Object? importance = freezed,
  }) {
    return _then(_$_ImportanceChange(
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as Importance,
    ));
  }
}

/// @nodoc

class _$_ImportanceChange implements _ImportanceChange {
  const _$_ImportanceChange({required this.importance});

  @override
  final Importance importance;

  @override
  String toString() {
    return 'TaskEditEvent.importanceChange(importance: $importance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportanceChange &&
            const DeepCollectionEquality()
                .equals(other.importance, importance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(importance));

  @JsonKey(ignore: true)
  @override
  _$$_ImportanceChangeCopyWith<_$_ImportanceChange> get copyWith =>
      __$$_ImportanceChangeCopyWithImpl<_$_ImportanceChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textChange,
    required TResult Function() cancel,
    required TResult Function(Importance importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() delete,
    required TResult Function() save,
  }) {
    return importanceChange(importance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
  }) {
    return importanceChange?.call(importance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (importanceChange != null) {
      return importanceChange(importance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ImportanceChange value) importanceChange,
    required TResult Function(_DeadlineChange value) deadlineChange,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_SaveEvent value) save,
  }) {
    return importanceChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
  }) {
    return importanceChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) {
    if (importanceChange != null) {
      return importanceChange(this);
    }
    return orElse();
  }
}

abstract class _ImportanceChange implements TaskEditEvent {
  const factory _ImportanceChange({required final Importance importance}) =
      _$_ImportanceChange;

  Importance get importance;
  @JsonKey(ignore: true)
  _$$_ImportanceChangeCopyWith<_$_ImportanceChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeadlineChangeCopyWith<$Res> {
  factory _$$_DeadlineChangeCopyWith(
          _$_DeadlineChange value, $Res Function(_$_DeadlineChange) then) =
      __$$_DeadlineChangeCopyWithImpl<$Res>;
  $Res call({DateTime? deadline});
}

/// @nodoc
class __$$_DeadlineChangeCopyWithImpl<$Res>
    extends _$TaskEditEventCopyWithImpl<$Res>
    implements _$$_DeadlineChangeCopyWith<$Res> {
  __$$_DeadlineChangeCopyWithImpl(
      _$_DeadlineChange _value, $Res Function(_$_DeadlineChange) _then)
      : super(_value, (v) => _then(v as _$_DeadlineChange));

  @override
  _$_DeadlineChange get _value => super._value as _$_DeadlineChange;

  @override
  $Res call({
    Object? deadline = freezed,
  }) {
    return _then(_$_DeadlineChange(
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DeadlineChange implements _DeadlineChange {
  const _$_DeadlineChange({this.deadline});

  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'TaskEditEvent.deadlineChange(deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeadlineChange &&
            const DeepCollectionEquality().equals(other.deadline, deadline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deadline));

  @JsonKey(ignore: true)
  @override
  _$$_DeadlineChangeCopyWith<_$_DeadlineChange> get copyWith =>
      __$$_DeadlineChangeCopyWithImpl<_$_DeadlineChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textChange,
    required TResult Function() cancel,
    required TResult Function(Importance importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() delete,
    required TResult Function() save,
  }) {
    return deadlineChange(deadline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
  }) {
    return deadlineChange?.call(deadline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (deadlineChange != null) {
      return deadlineChange(deadline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ImportanceChange value) importanceChange,
    required TResult Function(_DeadlineChange value) deadlineChange,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_SaveEvent value) save,
  }) {
    return deadlineChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
  }) {
    return deadlineChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) {
    if (deadlineChange != null) {
      return deadlineChange(this);
    }
    return orElse();
  }
}

abstract class _DeadlineChange implements TaskEditEvent {
  const factory _DeadlineChange({final DateTime? deadline}) = _$_DeadlineChange;

  DateTime? get deadline;
  @JsonKey(ignore: true)
  _$$_DeadlineChangeCopyWith<_$_DeadlineChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteEventCopyWith<$Res> {
  factory _$$_DeleteEventCopyWith(
          _$_DeleteEvent value, $Res Function(_$_DeleteEvent) then) =
      __$$_DeleteEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteEventCopyWithImpl<$Res>
    extends _$TaskEditEventCopyWithImpl<$Res>
    implements _$$_DeleteEventCopyWith<$Res> {
  __$$_DeleteEventCopyWithImpl(
      _$_DeleteEvent _value, $Res Function(_$_DeleteEvent) _then)
      : super(_value, (v) => _then(v as _$_DeleteEvent));

  @override
  _$_DeleteEvent get _value => super._value as _$_DeleteEvent;
}

/// @nodoc

class _$_DeleteEvent implements _DeleteEvent {
  const _$_DeleteEvent();

  @override
  String toString() {
    return 'TaskEditEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textChange,
    required TResult Function() cancel,
    required TResult Function(Importance importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() delete,
    required TResult Function() save,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ImportanceChange value) importanceChange,
    required TResult Function(_DeadlineChange value) deadlineChange,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_SaveEvent value) save,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteEvent implements TaskEditEvent {
  const factory _DeleteEvent() = _$_DeleteEvent;
}

/// @nodoc
abstract class _$$_SaveEventCopyWith<$Res> {
  factory _$$_SaveEventCopyWith(
          _$_SaveEvent value, $Res Function(_$_SaveEvent) then) =
      __$$_SaveEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveEventCopyWithImpl<$Res> extends _$TaskEditEventCopyWithImpl<$Res>
    implements _$$_SaveEventCopyWith<$Res> {
  __$$_SaveEventCopyWithImpl(
      _$_SaveEvent _value, $Res Function(_$_SaveEvent) _then)
      : super(_value, (v) => _then(v as _$_SaveEvent));

  @override
  _$_SaveEvent get _value => super._value as _$_SaveEvent;
}

/// @nodoc

class _$_SaveEvent implements _SaveEvent {
  const _$_SaveEvent();

  @override
  String toString() {
    return 'TaskEditEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textChange,
    required TResult Function() cancel,
    required TResult Function(Importance importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() delete,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textChange,
    TResult Function()? cancel,
    TResult Function(Importance importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? delete,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ImportanceChange value) importanceChange,
    required TResult Function(_DeadlineChange value) deadlineChange,
    required TResult Function(_DeleteEvent value) delete,
    required TResult Function(_SaveEvent value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextChange value)? textChange,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ImportanceChange value)? importanceChange,
    TResult Function(_DeadlineChange value)? deadlineChange,
    TResult Function(_DeleteEvent value)? delete,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _SaveEvent implements TaskEditEvent {
  const factory _SaveEvent() = _$_SaveEvent;
}

/// @nodoc
mixin _$TaskEditState {
  Task? get initialTask => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  Importance get importance => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get changedAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        initial,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)
        error,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        save,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        initial,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)?
        error,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        save,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        initial,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)?
        error,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        save,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEditStateCopyWith<TaskEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditStateCopyWith<$Res> {
  factory $TaskEditStateCopyWith(
          TaskEditState value, $Res Function(TaskEditState) then) =
      _$TaskEditStateCopyWithImpl<$Res>;
  $Res call(
      {Task? initialTask,
      String text,
      String? color,
      Importance importance,
      DateTime? deadline,
      bool done,
      DateTime createdAt,
      DateTime changedAt});

  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class _$TaskEditStateCopyWithImpl<$Res>
    implements $TaskEditStateCopyWith<$Res> {
  _$TaskEditStateCopyWithImpl(this._value, this._then);

  final TaskEditState _value;
  // ignore: unused_field
  final $Res Function(TaskEditState) _then;

  @override
  $Res call({
    Object? initialTask = freezed,
    Object? text = freezed,
    Object? color = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
  }) {
    return _then(_value.copyWith(
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
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

  @override
  $TaskCopyWith<$Res>? get initialTask {
    if (_value.initialTask == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.initialTask!, (value) {
      return _then(_value.copyWith(initialTask: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TaskEditStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {Task? initialTask,
      String text,
      String? color,
      Importance importance,
      DateTime? deadline,
      bool done,
      DateTime createdAt,
      DateTime changedAt,
      String? errorMsg});

  @override
  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$TaskEditStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? initialTask = freezed,
    Object? text = freezed,
    Object? color = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_$_Initial(
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
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
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(
      {this.initialTask,
      required this.text,
      this.color,
      required this.importance,
      this.deadline,
      required this.done,
      required this.createdAt,
      required this.changedAt,
      this.errorMsg})
      : super._();

  @override
  final Task? initialTask;
  @override
  final String text;
  @override
  final String? color;
  @override
  final Importance importance;
  @override
  final DateTime? deadline;
  @override
  final bool done;
  @override
  final DateTime createdAt;
  @override
  final DateTime changedAt;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'TaskEditState.initial(initialTask: $initialTask, text: $text, color: $color, importance: $importance, deadline: $deadline, done: $done, createdAt: $createdAt, changedAt: $changedAt, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.initialTask, initialTask) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.changedAt, changedAt) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTask),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(changedAt),
      const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        initial,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)
        error,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        save,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        delete,
  }) {
    return initial(initialTask, text, color, importance, deadline, done,
        createdAt, changedAt, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        initial,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)?
        error,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        save,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        delete,
  }) {
    return initial?.call(initialTask, text, color, importance, deadline, done,
        createdAt, changedAt, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        initial,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)?
        error,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        save,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        delete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(initialTask, text, color, importance, deadline, done,
          createdAt, changedAt, errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends TaskEditState {
  const factory _Initial(
      {final Task? initialTask,
      required final String text,
      final String? color,
      required final Importance importance,
      final DateTime? deadline,
      required final bool done,
      required final DateTime createdAt,
      required final DateTime changedAt,
      final String? errorMsg}) = _$_Initial;
  const _Initial._() : super._();

  @override
  Task? get initialTask;
  @override
  String get text;
  @override
  String? get color;
  @override
  Importance get importance;
  @override
  DateTime? get deadline;
  @override
  bool get done;
  @override
  DateTime get createdAt;
  @override
  DateTime get changedAt;
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $TaskEditStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {Task? initialTask,
      String text,
      String? color,
      Importance importance,
      DateTime? deadline,
      bool done,
      DateTime createdAt,
      DateTime changedAt,
      String errorMsg});

  @override
  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$TaskEditStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? initialTask = freezed,
    Object? text = freezed,
    Object? color = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_$_Error(
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
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
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error(
      {this.initialTask,
      required this.text,
      this.color,
      required this.importance,
      this.deadline,
      required this.done,
      required this.createdAt,
      required this.changedAt,
      required this.errorMsg})
      : super._();

  @override
  final Task? initialTask;
  @override
  final String text;
  @override
  final String? color;
  @override
  final Importance importance;
  @override
  final DateTime? deadline;
  @override
  final bool done;
  @override
  final DateTime createdAt;
  @override
  final DateTime changedAt;
  @override
  final String errorMsg;

  @override
  String toString() {
    return 'TaskEditState.error(initialTask: $initialTask, text: $text, color: $color, importance: $importance, deadline: $deadline, done: $done, createdAt: $createdAt, changedAt: $changedAt, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality()
                .equals(other.initialTask, initialTask) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.changedAt, changedAt) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTask),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(changedAt),
      const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        initial,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)
        error,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        save,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        delete,
  }) {
    return error(initialTask, text, color, importance, deadline, done,
        createdAt, changedAt, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        initial,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)?
        error,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        save,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        delete,
  }) {
    return error?.call(initialTask, text, color, importance, deadline, done,
        createdAt, changedAt, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        initial,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)?
        error,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        save,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        delete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(initialTask, text, color, importance, deadline, done,
          createdAt, changedAt, errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends TaskEditState {
  const factory _Error(
      {final Task? initialTask,
      required final String text,
      final String? color,
      required final Importance importance,
      final DateTime? deadline,
      required final bool done,
      required final DateTime createdAt,
      required final DateTime changedAt,
      required final String errorMsg}) = _$_Error;
  const _Error._() : super._();

  @override
  Task? get initialTask;
  @override
  String get text;
  @override
  String? get color;
  @override
  Importance get importance;
  @override
  DateTime? get deadline;
  @override
  bool get done;
  @override
  DateTime get createdAt;
  @override
  DateTime get changedAt;
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveCopyWith<$Res> implements $TaskEditStateCopyWith<$Res> {
  factory _$$_SaveCopyWith(_$_Save value, $Res Function(_$_Save) then) =
      __$$_SaveCopyWithImpl<$Res>;
  @override
  $Res call(
      {Task? initialTask,
      String text,
      String? color,
      Importance importance,
      DateTime? deadline,
      bool done,
      DateTime createdAt,
      DateTime changedAt,
      String? errorMsg});

  @override
  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class __$$_SaveCopyWithImpl<$Res> extends _$TaskEditStateCopyWithImpl<$Res>
    implements _$$_SaveCopyWith<$Res> {
  __$$_SaveCopyWithImpl(_$_Save _value, $Res Function(_$_Save) _then)
      : super(_value, (v) => _then(v as _$_Save));

  @override
  _$_Save get _value => super._value as _$_Save;

  @override
  $Res call({
    Object? initialTask = freezed,
    Object? text = freezed,
    Object? color = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_$_Save(
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
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
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Save extends _Save {
  const _$_Save(
      {this.initialTask,
      required this.text,
      this.color,
      required this.importance,
      this.deadline,
      required this.done,
      required this.createdAt,
      required this.changedAt,
      this.errorMsg})
      : super._();

  @override
  final Task? initialTask;
  @override
  final String text;
  @override
  final String? color;
  @override
  final Importance importance;
  @override
  final DateTime? deadline;
  @override
  final bool done;
  @override
  final DateTime createdAt;
  @override
  final DateTime changedAt;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'TaskEditState.save(initialTask: $initialTask, text: $text, color: $color, importance: $importance, deadline: $deadline, done: $done, createdAt: $createdAt, changedAt: $changedAt, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Save &&
            const DeepCollectionEquality()
                .equals(other.initialTask, initialTask) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.changedAt, changedAt) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTask),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(changedAt),
      const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$$_SaveCopyWith<_$_Save> get copyWith =>
      __$$_SaveCopyWithImpl<_$_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        initial,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)
        error,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        save,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        delete,
  }) {
    return save(initialTask, text, color, importance, deadline, done, createdAt,
        changedAt, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        initial,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)?
        error,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        save,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        delete,
  }) {
    return save?.call(initialTask, text, color, importance, deadline, done,
        createdAt, changedAt, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        initial,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)?
        error,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        save,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(initialTask, text, color, importance, deadline, done,
          createdAt, changedAt, errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save extends TaskEditState {
  const factory _Save(
      {final Task? initialTask,
      required final String text,
      final String? color,
      required final Importance importance,
      final DateTime? deadline,
      required final bool done,
      required final DateTime createdAt,
      required final DateTime changedAt,
      final String? errorMsg}) = _$_Save;
  const _Save._() : super._();

  @override
  Task? get initialTask;
  @override
  String get text;
  @override
  String? get color;
  @override
  Importance get importance;
  @override
  DateTime? get deadline;
  @override
  bool get done;
  @override
  DateTime get createdAt;
  @override
  DateTime get changedAt;
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$_SaveCopyWith<_$_Save> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res>
    implements $TaskEditStateCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  @override
  $Res call(
      {Task? initialTask,
      String text,
      String? color,
      Importance importance,
      DateTime? deadline,
      bool done,
      DateTime createdAt,
      DateTime changedAt,
      String? errorMsg});

  @override
  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res> extends _$TaskEditStateCopyWithImpl<$Res>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, (v) => _then(v as _$_Delete));

  @override
  _$_Delete get _value => super._value as _$_Delete;

  @override
  $Res call({
    Object? initialTask = freezed,
    Object? text = freezed,
    Object? color = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_$_Delete(
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
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
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Delete extends _Delete {
  const _$_Delete(
      {this.initialTask,
      required this.text,
      this.color,
      required this.importance,
      this.deadline,
      required this.done,
      required this.createdAt,
      required this.changedAt,
      this.errorMsg})
      : super._();

  @override
  final Task? initialTask;
  @override
  final String text;
  @override
  final String? color;
  @override
  final Importance importance;
  @override
  final DateTime? deadline;
  @override
  final bool done;
  @override
  final DateTime createdAt;
  @override
  final DateTime changedAt;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'TaskEditState.delete(initialTask: $initialTask, text: $text, color: $color, importance: $importance, deadline: $deadline, done: $done, createdAt: $createdAt, changedAt: $changedAt, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            const DeepCollectionEquality()
                .equals(other.initialTask, initialTask) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.changedAt, changedAt) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTask),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(changedAt),
      const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        initial,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)
        error,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        save,
    required TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)
        delete,
  }) {
    return delete(initialTask, text, color, importance, deadline, done,
        createdAt, changedAt, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        initial,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)?
        error,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        save,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        delete,
  }) {
    return delete?.call(initialTask, text, color, importance, deadline, done,
        createdAt, changedAt, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        initial,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String errorMsg)?
        error,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        save,
    TResult Function(
            Task? initialTask,
            String text,
            String? color,
            Importance importance,
            DateTime? deadline,
            bool done,
            DateTime createdAt,
            DateTime changedAt,
            String? errorMsg)?
        delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(initialTask, text, color, importance, deadline, done,
          createdAt, changedAt, errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete extends TaskEditState {
  const factory _Delete(
      {final Task? initialTask,
      required final String text,
      final String? color,
      required final Importance importance,
      final DateTime? deadline,
      required final bool done,
      required final DateTime createdAt,
      required final DateTime changedAt,
      final String? errorMsg}) = _$_Delete;
  const _Delete._() : super._();

  @override
  Task? get initialTask;
  @override
  String get text;
  @override
  String? get color;
  @override
  Importance get importance;
  @override
  DateTime? get deadline;
  @override
  bool get done;
  @override
  DateTime get createdAt;
  @override
  DateTime get changedAt;
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}
