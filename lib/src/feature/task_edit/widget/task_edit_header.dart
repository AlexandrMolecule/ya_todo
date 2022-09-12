import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/core/l10n/l10n.dart';
import 'package:y_todo/src/feature/task_edit/bloc/task_edit_bloc.dart';

class TaskEditHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  TaskEditHeaderDelegate({required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final scrollCoef = shrinkOffset / expandedHeight;
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    
    return Align(
      alignment: Alignment.topCenter,
      child: Material(
        elevation: scrollCoef > 0.9 ? 4 : 0,
        child: Container(
          decoration:
              BoxDecoration(color: _getHeaderColor(context: context, scrollCoef: scrollCoef, isDark: isDarkMode)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(right: 16)),
                onPressed: () {
                  context.read<TaskEditBloc>().add(const TaskEditEvent.save());
                },
                child: Text(
                  AppLocalizations.of(context)?.save.toUpperCase() ??
                      'СОХРАНИТЬ',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
    Color _getHeaderColor(
      {required bool isDark,
      required double scrollCoef,
      required BuildContext context}) {
    final theme = Theme.of(context);
    if (isDark) {
      return scrollCoef > 0.7
          ? theme.colorScheme.onBackground
          : theme.colorScheme.background;
    } else {
      return theme.colorScheme.background;
    }
  }
}
