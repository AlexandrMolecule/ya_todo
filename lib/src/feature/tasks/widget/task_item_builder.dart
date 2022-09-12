import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/core/cubit/navigation_cubit.dart';
import 'package:y_todo/src/core/l10n/l10n.dart';
import 'package:y_todo/src/feature/tasks/bloc/tasks_bloc.dart';

import 'package:y_todo/src/feature/tasks/domain/model/task.dart';
import 'package:y_todo/src/feature/tasks/widget/task_item.dart';

class TaskItemBuilder extends StatelessWidget {
  const TaskItemBuilder({
    Key? key,
    required this.isFirst,
    required this.theme,
    required this.isLast,
    required this.task,
    required this.textController,
    required this.tasks,
    required this.animation,
    required this.index,
    required this.listKey,
  }) : super(key: key);

  final bool isFirst;
  final int index;
  final ThemeData theme;
  final bool isLast;
  final Task task;
  final GlobalKey<SliverAnimatedListState> listKey;
  final TextEditingController textController;
  final List<Task> tasks;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    final itemRadius = isFirst && isLast
        ? const BorderRadius.all(Radius.circular(8))
        : isFirst
            ? const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))
            : isLast
                ? const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))
                : null;

    final itemMargin = isFirst
        ? const EdgeInsets.fromLTRB(8, 3, 8, 0)
        : isLast
            ? const EdgeInsets.fromLTRB(8, 0, 8, 28)
            : const EdgeInsets.symmetric(horizontal: 8);
    return SizeTransition(
      sizeFactor: animation,
      child: Container(
        padding: isFirst ? const EdgeInsets.only(top: 8) : null,
        margin: itemMargin,
        decoration: BoxDecoration(
          borderRadius: itemRadius,
          color: theme.colorScheme.onBackground,
          boxShadow: [
            if (isLast)
              BoxShadow(
                color: const Color(0xff000000).withOpacity(0.12),
                offset: const Offset(0, 2),
                blurRadius: 2,
              ),
            if (isFirst)
              BoxShadow(
                color: const Color(0xff000000).withOpacity(0.06),
                blurRadius: 1,
              ),
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.06),
              offset: const Offset(1, 0),
            ),
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.06),
              offset: const Offset(-1, 0),
            ),
          ],
        ),
        child: isLast
            ? Column(
                children: [
                  TaskItem(
                      task: task,
                      onDeleteDismiss: () async {
                        context
                            .read<TasksBloc>()
                            .add(TaskEvent.deleteTask(task));
                        listKey.currentState?.removeItem(
                            index, (context, animation) => Container());
                      },
                      onToggleDismiss: () => context.read<TasksBloc>().add(
                          TaskEvent.taskToggleDone(task: task, done: true)),
                      tapCheckbox: (done) {
                        context.read<TasksBloc>().add(
                              TaskEvent.taskToggleDone(task: task, done: done),
                            );
                      },
                      onInfoTap: () => BlocProvider.of<NavigationCubit>(context)
                          .goToEdit(task: task)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(49, 12, 49, 22),
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration.collapsed(
                          hintText:
                              AppLocalizations.of(context)?.newTask ?? 'New',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: theme.hintColor)),
                      onEditingComplete: () {
                        if (textController.value.text.isNotEmpty) {
                          context.read<TasksBloc>().add(TaskEvent.saveTask(
                              Task.create(textController.value.text)));
                          listKey.currentState?.insertItem(tasks.length);
                          textController.clear();
                          FocusScope.of(context).unfocus();
                        } else {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                backgroundColor:
                                    Theme.of(context).colorScheme.onPrimary,
                                content: Text(AppLocalizations.of(context)
                                        ?.textRequired ??
                                    'Текст задачи обязателен'),
                              ),
                            );
                        }
                      },
                    ),
                  ),
                ],
              )
            : TaskItem(
                task: task,
                onDeleteDismiss: () {
                  context.read<TasksBloc>().add(TaskEvent.deleteTask(task));
                  listKey.currentState?.removeItem(
                      index, (context, animation) => const SizedBox.shrink());
                },
                onToggleDismiss: () => context
                    .read<TasksBloc>()
                    .add(TaskEvent.taskToggleDone(task: task, done: true)),
                tapCheckbox: (done) {
                  context.read<TasksBloc>().add(
                        TaskEvent.taskToggleDone(task: task, done: done),
                      );
                },
                onInfoTap: () => BlocProvider.of<NavigationCubit>(context)
                    .goToEdit(task: task)),
      ),
    );
  }
}
