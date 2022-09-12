import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

part 'navigation_state.freezed.dart';

@freezed
class NavigationState with _$NavigationState {
  factory NavigationState.tasks() = _Tasks;
  factory NavigationState.editTask({Task? task}) = _EditTask;
}
