import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/core/constants/color.dart';
import 'package:y_todo/src/core/l10n/l10n.dart';
import 'package:y_todo/src/feature/task_edit/bloc/task_edit_bloc.dart';
import 'package:y_todo/src/feature/tasks/util/date_formatter.dart';

class TaskEditDate extends StatelessWidget {
  const TaskEditDate(
      {Key? key,
      required this.theme,
      required this.state,
      required this.localization})
      : super(key: key);

  final ThemeData theme;
  final TaskEditState state;
  final AppLocalizations? localization;
  @override
  Widget build(BuildContext context) {
    final deadline = state.deadline;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 26, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                localization?.editDeadline ?? '',
                style: theme.textTheme.labelLarge,
              ),
              if (deadline != null) ...[
                const SizedBox(
                  height: 4,
                ),
                GestureDetector(
                  onTap: () async {
                    final taskEditBloc = context.read<TaskEditBloc>();
                    final newDate = await _showDatePicker(
                        context: context, deadline: deadline, theme: theme);

                    if (newDate != null) {
                      taskEditBloc
                          .add(TaskEditEvent.deadlineChange(deadline: newDate));
                    }
                  },
                  child: Text(
                    deadline.formatedString(context),
                    style: theme.textTheme.labelMedium?.copyWith(
                        height: 16 / 14, color: theme.colorScheme.onPrimary),
                  ),
                )
              ]
            ],
          ),
          SizedBox(
            height: 20,
            width: 36,
            child: Switch(
              value: state.hasDeadline,
              onChanged: (value) async {
                final taskEditBloc = context.read<TaskEditBloc>();
                if (value) {
                  final newDate = await _showDatePicker(
                      context: context,
                      deadline: deadline ?? DateTime.now(),
                      theme: theme);
                  if (newDate != null) {
                    taskEditBloc
                        .add(TaskEditEvent.deadlineChange(deadline: newDate));
                  }
                } else {
                  taskEditBloc.add(const TaskEditEvent.deadlineChange());
                }
              },
            ),
          )
        ],
      ),
    );
  }

  Future<DateTime?> _showDatePicker(
      {required BuildContext context,
      DateTime? deadline,
      required ThemeData theme}) async {
    final date = await showDatePicker(
        context: context,
        initialDate: deadline ?? DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2030),
        builder: (context, child) {
          return Theme(
            data: theme.copyWith(
              primaryColor: AppColors.lColorBlue,
              colorScheme: ColorScheme.light(
                primary: theme.colorScheme.onPrimary,
                onSurface: theme.colorScheme.primary,
              ),
              dialogBackgroundColor: theme.colorScheme.onBackground,
            ),
            child: child ?? const SizedBox(),
          );
        });
    return date;
  }
}
