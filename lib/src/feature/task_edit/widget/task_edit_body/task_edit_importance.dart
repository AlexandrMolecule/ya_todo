import 'package:flutter/material.dart';
import 'package:y_todo/src/core/l10n/l10n.dart';
import 'package:y_todo/src/feature/task_edit/bloc/task_edit_bloc.dart';
import 'package:y_todo/src/feature/task_edit/widget/high_importance.dart';
import 'package:y_todo/src/feature/tasks/domain/model/enum/importance_enum.dart';

class TaskEditImportance extends StatelessWidget {
  const TaskEditImportance({
    Key? key,
    required this.localization,
    required this.theme,
    required this.state,
    required this.onChange,
  }) : super(key: key);

  final AppLocalizations? localization;
  final ThemeData theme;
  final TaskEditState state;
  final void Function(Importance?)? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localization?.editImportance ?? '',
            style: theme.textTheme.labelLarge,
          ),
          Container(
            margin: const EdgeInsets.only(top: 4, bottom: 16),
            child: DropdownButton(
              isDense: true,
              value: state.importance,
              icon: const SizedBox(),
              underline: const SizedBox(),
              hint: Text(localization?.editImportance ?? ''),
              selectedItemBuilder: (context) {
                return Importance.values
                    .map((e) => e == Importance.important
                        ? HighImportanceItem(
                            item: e,
                            selectedFontSize: 14,
                          )
                        : Text(
                            e.displayTitle(context),
                            style: theme.textTheme.labelLarge?.copyWith(
                                fontSize: 14,
                                height: 16 / 14,
                                color: theme.hintColor),
                          ))
                    .toList();
              },
              items: Importance.values
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: e == Importance.important
                            ? HighImportanceItem(item: e)
                            : Text(
                                e.displayTitle(context),
                                style: theme.textTheme.labelLarge?.copyWith(
                                  height: 16 / 16,
                                ),
                              ),
                      ))
                  .toList(),
              onChanged: onChange,
            ),
          ),
        ],
      ),
    );
  }
}
