import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/core/l10n/l10n.dart';
import 'package:y_todo/src/feature/task_edit/bloc/task_edit_bloc.dart';
import 'package:y_todo/src/feature/task_edit/widget/task_edit_body/task_edit_widgets.dart';
import 'package:y_todo/src/feature/tasks/domain/model/enum/importance_enum.dart';

class TaskEditBody extends StatelessWidget {
  const TaskEditBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final state = context.watch<TaskEditBloc>().state;
    final deadline = state.deadline;

    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TEXT
          TaskEditText(
            theme: theme,
            state: state,
            localization: localization,
            onChanged: (string) {
              context
                  .read<TaskEditBloc>()
                  .add(TaskEditEvent.textChange(text: string));
            },
          ),

          /// Drop Down
          TaskEditImportance(
            localization: localization,
            theme: theme,
            state: state,
            onChange: (value) {
              context.read<TaskEditBloc>().add(TaskEditEvent.importanceChange(
                  importance: value as Importance));
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              color: theme.unselectedWidgetColor,
              height: 0.5,
            ),
          ),

          /// DEADLINE widget
          TaskEditDate(
            state: state,
            localization: localization,
            theme: theme,
          ),

          SizedBox(
            height: deadline == null ? 51.5 : 40,
          ),
          Divider(
            color: theme.unselectedWidgetColor,
            height: 0.5,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 15),
            child: GestureDetector(
              onTap: () {
                if (!state.isNewTask) {
                  context
                      .read<TaskEditBloc>()
                      .add(const TaskEditEvent.delete());
                }
              },
              child: Row(
                children: [
                  Icon(
                    Icons.delete,
                    color: state.isNewTask
                        ? theme.disabledColor
                        : theme.colorScheme.error,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    localization?.delete ?? '',
                    style: theme.textTheme.labelLarge?.copyWith(
                        color: state.isNewTask
                            ? theme.disabledColor
                            : theme.colorScheme.error),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
