// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:y_todo/src/feature/tasks/domain/model/enum/importance_enum.dart';
import 'package:y_todo/src/feature/tasks/util/bool_util.dart';
import 'package:y_todo/src/feature/tasks/util/date_util.dart';

part '../../domain/model/task.freezed.dart';
part '../../domain/model/task.g.dart';

@immutable
@freezed
class Task with _$Task, Comparable<Task> {
  const Task._();
  const factory Task({
    required final String id,
    required final String text,
    @JsonKey(name: 'color', includeIfNull: true) final String? color,
    required final Importance importance,
    @JsonKey(name: 'deadline', fromJson: DateUtil.nullDateFromJson, toJson: DateUtil.toJson, includeIfNull: true)
        final DateTime? deadline,
    @JsonKey(name: 'done', fromJson: BoolUtil.fromJson)
        required final bool done,
    @JsonKey(name: 'created_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
        required final DateTime createdAt,
    @JsonKey(name: 'changed_at', fromJson: DateUtil.fromJson, toJson: DateUtil.toJson)
        required final DateTime changedAt,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);

  @override
  int compareTo(Task other) => other.changedAt.compareTo(changedAt);

  factory Task.create([String? text]) => Task(
        id: const Uuid().v4(),
        text: text ?? '',
        importance: Importance.basic,
        done: false,
        createdAt: DateTime.now(),
        changedAt: DateTime.now(),
      );
}
