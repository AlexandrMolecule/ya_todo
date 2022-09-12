import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/core/constants/color.dart';
import 'package:y_todo/src/core/l10n/l10n.dart';
import 'package:y_todo/src/feature/tasks/bloc/tasks_bloc.dart';

class HeaderDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  void Function() onFilterTap;

  HeaderDelegate({required this.expandedHeight, required this.onFilterTap});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final scrollCoef = shrinkOffset / expandedHeight;
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Material(
          elevation: scrollCoef > 0.6 ? 5 : 0,
          child: Container(
              color: _getHeaderColor(
                  isDark: isDarkMode, scrollCoef: scrollCoef, context: context)
              ),
        ),

        /// ФИЛЬТР
        Positioned(
          child: GestureDetector(
            onTap: onFilterTap,
            child: Icon(
              context.watch<TasksBloc>().state.filterAll
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: AppColors.lColorBlue,
            ),
          ),
          right: 18,
          bottom: 16,
        ),

        /// МОИ ДЕЛА
        AnimatedContainer(
          alignment: Alignment.lerp(
              Alignment.centerLeft, Alignment.centerLeft, scrollCoef),
          duration: Duration.zero,
          padding: EdgeInsetsGeometry.lerp(const EdgeInsets.only(left: 60),
              const EdgeInsets.fromLTRB(16, 0, 0, 0), scrollCoef),
          child: AnimatedDefaultTextStyle(
            child: Text(
              AppLocalizations.of(context)?.myTasks ?? "",
            ),
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: lerpDouble(32, 20, shrinkOffset / expandedHeight),
                  height: lerpDouble(
                      38 / 32, 32 / 20, shrinkOffset / expandedHeight),
                ),
            duration: Duration.zero,
          ),
        ),

        /// ВЫПОЛНЕНО
        Positioned(
          left: lerpDouble(60, 0, shrinkOffset / expandedHeight),
          bottom: 18,
          child: AnimatedOpacity(
            opacity: shrinkOffset < 10 ? 1 - scrollCoef : 0,
            duration: const Duration(milliseconds: 150),
            child: AnimatedDefaultTextStyle(
                child: Text(
                  '${AppLocalizations.of(context)?.complete ?? ''}${context.watch<TasksBloc>().state.taskCount}',
                ),
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: AppColors.lColorGray, fontWeight: FontWeight.w400),
                duration: const Duration(milliseconds: 100)),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 56;

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
