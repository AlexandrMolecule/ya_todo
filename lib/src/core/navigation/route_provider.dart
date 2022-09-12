import 'dart:developer';
import 'dart:ui';

import 'package:flutter/widgets.dart';

class DebugRouteInformationProvider extends PlatformRouteInformationProvider {
  DebugRouteInformationProvider()
      : super(
            initialRouteInformation: RouteInformation(
          location: PlatformDispatcher.instance.defaultRouteName,
        ));

  @override
  Future<bool> didPushRoute(String route) {
    log('Platform reports $route');
    return super.didPushRoute(route);
  }

  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) {
    log('Platform reports routeinformation: $routeInformation');
    return super.didPushRouteInformation(routeInformation);
  }
}
