import 'package:flutter/material.dart';
import 'package:y_todo/src/core/constants/app_icons.dart';
import 'package:y_todo/src/core/constants/color.dart';
import 'package:y_todo/src/feature/tasks/domain/model/enum/importance_enum.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';
import 'package:y_todo/src/feature/tasks/util/date_formatter.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(
      {Key? key,
      required this.task,
      this.tapCheckbox,
      required this.onDeleteDismiss,
      required this.onToggleDismiss,
      this.onInfoTap})
      : super(key: key);
  final Task task;
  final ValueChanged<bool?>? tapCheckbox;
  final VoidCallback onDeleteDismiss;
  final VoidCallback? onInfoTap;
  final VoidCallback onToggleDismiss;
  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final theme = Theme.of(context);

    final isImportant = task.importance == Importance.important;

    return Dismissible(
      key: Key('dismissible_${task.id}'),
      background: ColoredBox(
        color: isDarkMode ? AppColors.lColorGreen : AppColors.dColorGreen,
        child: const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 24),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
      ),
      secondaryBackground: ColoredBox(
        color: isDarkMode ? AppColors.lColorRed : AppColors.dColorRed,
        child: const Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(Icons.delete, color: Colors.white),
          ),
        ),
      ),
      confirmDismiss: _confirmDismiss,
      onDismissed: _onDismissed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: isImportant
                  ? BoxDecoration(
                      color: theme.colorScheme.onError.withOpacity(0.16),
                      borderRadius: BorderRadius.circular(3))
                  : null,
              width: 18,
              height: 20,
              child: Theme(
                data: Theme.of(context).copyWith(
                    unselectedWidgetColor: isImportant
                        ? theme.colorScheme.onError
                        : theme.unselectedWidgetColor),
                child: Checkbox(
                  activeColor: AppColors.lColorGreen,
                  checkColor: theme.colorScheme.onBackground,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  value: task.done,
                  onChanged: tapCheckbox,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(children: [
                      if (task.importance != Importance.basic && !task.done)
                        WidgetSpan(
                            child: Icon(
                              task.importance == Importance.low
                                  ? AppIcons.arrow
                                  : AppIcons.exclam,
                              // AppIcons.exclam,
                              size: 14,
                              color: task.importance != Importance.important
                                  ? AppColors.lColorGray
                                  : theme.colorScheme.onError,
                            ),
                            alignment: PlaceholderAlignment.top),
                      TextSpan(
                        text: task.text,
                        style: !task.done
                            ? Theme.of(context).textTheme.labelLarge
                            : Theme.of(context).textTheme.labelLarge?.copyWith(
                                decoration: TextDecoration.lineThrough,
                                color: theme.hintColor),
                      )
                    ]),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (task.deadline != null) ...[
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      task.deadline!.formatedString(context),
                      style: theme.textTheme.labelMedium
                          ?.copyWith(color: theme.hintColor),
                    )
                  ]
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: onInfoTap,
              child: Icon(
                Icons.info_outline,
                color: theme.hintColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<bool?> _confirmDismiss(DismissDirection direction) {
    if (direction == DismissDirection.startToEnd) {
      onToggleDismiss();
      return Future(
        () => false,
      );
    } else {
      return Future(
        () => true,
      );
    }
  }

  void _onDismissed(DismissDirection direction) {
    if (direction == DismissDirection.startToEnd) {
      if (!task.done) {
        onToggleDismiss();
      }
    } else {
      onDeleteDismiss();
    }
  }
}
