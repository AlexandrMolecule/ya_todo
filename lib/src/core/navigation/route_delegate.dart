import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/core/cubit/navigation_cubit.dart';
import 'package:y_todo/src/core/cubit/navigation_state.dart';
import 'package:y_todo/src/core/di/di.dart';

class AppRouterDelegate extends RouterDelegate<NavigationState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final NavigationCubit navigationCubit;
  final IScreenFactory screenFactory;

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  AppRouterDelegate(
      {required this.navigationCubit, required this.screenFactory});
  List<Page> _getPages(
      NavigationState currentState, NavigationState previousState) {
    final pages = <Page>[screenFactory.makeTasksScreen()];
    log(currentState.toString());
    currentState.when(
        tasks: () {},
        editTask: (task) =>
            pages.add(screenFactory.makeTaskEditScreen(initialTask: task)));
    return pages;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      listener: (context, state) {
        notifyListeners();
      },
      bloc: navigationCubit,
      child: Navigator(
        pages: _getPages(navigationCubit.state, navigationCubit.previousState),
        onPopPage: (route, result) {
          if (!route.didPop(result) ||
              navigationCubit.state == NavigationState.tasks()) {
            return false;
          }

          navigationCubit.state.when(
              tasks: navigationCubit.goToTasks,
              editTask: (task) => navigationCubit.goToTasks());

          return true;
        },
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(NavigationState configuration) {
    if (configuration == NavigationState.tasks()) return Future.value();
    navigationCubit.goToEdit(task: null);
    return Future.value();
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;
}
