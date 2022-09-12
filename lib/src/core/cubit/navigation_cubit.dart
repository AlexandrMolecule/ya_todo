import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/core/cubit/navigation_state.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.tasks());

  NavigationState previousState = NavigationState.tasks();

  void goToEdit({Task? task}) {
    previousState = state;
    emit(NavigationState.editTask(task: task));
  }

  void goToTasks() {
    previousState = state;
    emit(NavigationState.tasks());
  }
}
