import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:y_todo/src/core/cubit/navigation_state.dart';
import 'package:y_todo/src/core/navigation/routes.dart';

class InformationParser extends RouteInformationParser<NavigationState> {
  @override
  Future<NavigationState> parseRouteInformation(
      RouteInformation routeInformation) {
    final url = routeInformation.location;
    if (url != null) {
      final uri = Uri.parse(url);
      if (uri.pathSegments.isNotEmpty && uri.pathSegments[0] == "task") {
        return SynchronousFuture(NavigationState.editTask());
      }
    }
    return SynchronousFuture(NavigationState.tasks());
  }

  @override
  RouteInformation? restoreRouteInformation(NavigationState configuration) {
    return configuration.when(
      tasks: RouteInformation.new,
      editTask: (_) => const RouteInformation(location: AppRoutes.taskEdit),
    );
  }
}
