import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';
part '../../domain/model/task_list.freezed.dart';
part '../../domain/model/task_list.g.dart';

@immutable
@freezed
class TaskList with _$TaskList {
  const TaskList._();
  const factory TaskList({
    required final String status,
    required final List<Task> list,
    required final int revision,
  }) = _TaskList;

  factory TaskList.fromJson(Map<String, Object?> json) =>
      _$TaskListFromJson(json);

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'list': list,
      };
}
