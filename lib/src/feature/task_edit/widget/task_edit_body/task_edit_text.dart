import 'package:flutter/material.dart';
import 'package:y_todo/src/core/l10n/l10n.dart';
import 'package:y_todo/src/feature/task_edit/bloc/task_edit_bloc.dart';

class TaskEditText extends StatelessWidget {
  const TaskEditText({
    Key? key,
    required this.theme,
    required this.state,
    required this.localization,
    required this.onChanged,
  }) : super(key: key);

  final ThemeData theme;
  final TaskEditState state;
  final AppLocalizations? localization;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 28),
      color: theme.colorScheme.onBackground,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          initialValue: state.text,
          maxLines: null,
          minLines: 4,
          onChanged: onChanged,
          decoration: InputDecoration.collapsed(
            hintText: localization?.editTextHint,
            hintStyle: theme.textTheme.labelLarge
                ?.copyWith(height: 18 / 16, color: theme.hintColor),
          ),
        ),
      ),
    );
  }
}