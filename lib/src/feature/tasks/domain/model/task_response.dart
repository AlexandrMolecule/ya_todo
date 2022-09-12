// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';
part '../../domain/model/task_response.freezed.dart';
part '../../domain/model/task_response.g.dart';

@immutable
@freezed
class TaskR with _$TaskR {
  const TaskR._();
  const factory TaskR({
    required final String status,
    required final int revision,
    @JsonKey(name: "element") required final Task task,
  }) = _TaskR;

  factory TaskR.fromJson(Map<String, Object?> json) => _$TaskRFromJson(json);
}
