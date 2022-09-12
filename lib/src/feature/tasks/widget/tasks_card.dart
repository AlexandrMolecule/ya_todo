import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/feature/tasks/bloc/tasks_bloc.dart';
import 'package:y_todo/src/feature/tasks/widget/task_item_builder.dart';

class TasksBox extends StatefulWidget {
  final ScrollController scrollController;
  final GlobalKey<SliverAnimatedListState> listKey;
  const TasksBox(
      {Key? key, required this.scrollController, required this.listKey})
      : super(key: key);

  @override
  State<TasksBox> createState() => _TasksBoxState();
}

class _TasksBoxState extends State<TasksBox> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tasks = context.watch<TasksBloc>().state.filteredTasks;
    return MultiBlocListener(
      listeners: [
        BlocListener<TasksBloc, TaskState>(
          listenWhen: (previous, current) {
            final preDifference = previous.tasks
                .toSet()
                .difference(previous.filteredTasks.toSet());
            final curDifference =
                current.tasks.toSet().difference(current.filteredTasks.toSet());
            final summaryDifference = curDifference.difference(preDifference);

            return summaryDifference.length != 1 &&
                previous.filteredTasks.length != current.filteredTasks.length &&
                !previous.isLoading &&
                previous.tasks.length == current.tasks.length;
          },
          listener: (context, state) {
            final difference = state.tasks
                .toSet()
                .difference(state.filteredTasks.toSet())
                .toList();

            if (state.filterAll) {
              final uncompletedTasks =
                  state.tasks.where((element) => !element.done).toList();
              final filterAllDifference = state.filteredTasks
                  .toSet()
                  .difference(uncompletedTasks.toSet())
                  .toList();

              for (final e in filterAllDifference) {
                final index = state.tasks.indexOf(e);
                widget.listKey.currentState?.insertItem(index);
              }
            } else {
              for (var i = 0; i < difference.length; i++) {
                final index = i == 0
                    ? state.tasks.indexOf(difference[i])
                    : state.tasks.indexOf(difference[i]) - i;

                widget.listKey.currentState?.removeItem(
                  index,
                  (context, animation) => TaskItemBuilder(
                    isFirst: index == 0,
                    index: index,
                    animation: animation,
                    theme: theme,
                    isLast: index == tasks.length - 1,
                    task: difference[i],
                    textController: textController,
                    tasks: tasks,
                    listKey: widget.listKey,
                  ),
                );
              }
            }
          },
        ),
        BlocListener<TasksBloc, TaskState>(
          listenWhen: (previous, current) {
            final preDifference = previous.tasks
                .toSet()
                .difference(previous.filteredTasks.toSet());

            final curDifference =
                current.tasks.toSet().difference(current.filteredTasks.toSet());

            final summaryDifference = curDifference.difference(preDifference);
            return summaryDifference.length == 1;
          },
          listener: (context, state) {
            final difference = state.tasks
                .toSet()
                .difference(state.filteredTasks.toSet())
                .toList();
            if (state.filterAll) {
              final uncompletedTasks =
                  state.tasks.where((element) => !element.done).toList();
              final filterAllDifference = state.filteredTasks
                  .toSet()
                  .difference(uncompletedTasks.toSet())
                  .toList();

              final index = state.tasks.indexOf(filterAllDifference.first);
              widget.listKey.currentState?.insertItem(index);
            } else {
              final index = state.tasks.indexOf(difference.first);
              widget.listKey.currentState?.removeItem(
                index,
                (context, animation) => TaskItemBuilder(
                  isFirst: index == 0,
                  index: index,
                  animation: animation,
                  theme: theme,
                  isLast: index == tasks.length - 1,
                  task: difference.first,
                  textController: textController,
                  tasks: tasks,
                  listKey: widget.listKey,
                ),
              );
            }
          },
        ),
      ],
      child: SliverAnimatedList(
        itemBuilder: (context, index, animation) {
          final isFirst = index == 0;
          final isLast = index == tasks.length - 1;
          final task = tasks[index];

          return TaskItemBuilder(
            isFirst: isFirst,
            index: index,
            animation: animation,
            theme: theme,
            isLast: isLast,
            task: task,
            textController: textController,
            tasks: tasks,
            listKey: widget.listKey,
          );
        },
        key: widget.listKey,
        initialItemCount: tasks.length,
      ),
    );
  }
}
