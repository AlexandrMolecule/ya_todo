import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:y_todo/src/core/constants/theme.dart';
import 'package:y_todo/src/core/cubit/navigation_state.dart';

class MyApp extends StatelessWidget {
  final RouterDelegate<NavigationState> routerDelegate;
  final RouteInformationParser<NavigationState> routerParser;
  final PlatformRouteInformationProvider routeProvider;
  const MyApp({
    Key? key,
    required this.routerDelegate,
    required this.routerParser,
    required this.routeProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerDelegate: routerDelegate,
      routeInformationParser: routerParser,
    );
  }
}
