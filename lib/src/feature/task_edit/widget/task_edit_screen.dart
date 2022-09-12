import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/core/l10n/l10n.dart';
import 'package:y_todo/src/feature/task_edit/bloc/task_edit_bloc.dart';
import 'package:y_todo/src/feature/task_edit/widget/task_edit_body/task_edit_body.dart';
import 'package:y_todo/src/feature/task_edit/widget/task_edit_header.dart';
import 'package:y_todo/src/feature/tasks/bloc/tasks_bloc.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

class TaskEditScreen extends StatelessWidget {
  final GlobalKey<SliverAnimatedListState> listKey;

  const TaskEditScreen({Key? key, required this.listKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TaskEditBloc, TaskEditState>(
          listenWhen: (previous, current) => current.mustLeave,
          listener: (context, state) => Navigator.of(context).pop(),
        ),
        BlocListener<TaskEditBloc, TaskEditState>(
            listenWhen: (previous, current) => current.isSave,
            listener: (context, state) {
              final newTask = state.initialTask;
              if (newTask != null) {
                BlocProvider.of<TasksBloc>(context).add(
                  TaskEvent.saveTask(newTask),
                );
              } else {
                BlocProvider.of<TasksBloc>(context).add(
                  TaskEvent.saveTask(
                    Task.create().copyWith(
                      text: state.text,
                      deadline: state.deadline,
                      importance: state.importance,
                    ),
                  ),
                );
                listKey.currentState
                    ?.insertItem(context.read<TasksBloc>().state.tasks.length);
              }
            }),
        BlocListener<TaskEditBloc, TaskEditState>(
            listenWhen: (previous, current) => current.isDelete,
            listener: (context, state) {
              final newTask = state.initialTask;
              if (newTask != null) {
                BlocProvider.of<TasksBloc>(context)
                    .add(TaskEvent.deleteTask(newTask));
                listKey.currentState?.removeItem(
                    context.read<TasksBloc>().state.tasks.indexOf(newTask),
                    (_, __) => const SizedBox.shrink());
              }
            }),
        BlocListener<TaskEditBloc, TaskEditState>(
            listenWhen: (previous, current) => current.hasError,
            listener: (context, state) {
              if (state.hasError) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text(
                          AppLocalizations.of(context)?.textRequired ?? ''),
                    ),
                  );
              }
            }),
      ],
      child: const EditTodoView(),
    );
  }
}

class EditTodoView extends StatelessWidget {
  const EditTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
          backgroundColor: theme.colorScheme.background,
          body: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                  pinned: true,
                  delegate: TaskEditHeaderDelegate(expandedHeight: 60)),
              const TaskEditBody()
            ],
          )),
    );
  }
}
