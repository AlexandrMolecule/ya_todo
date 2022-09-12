import 'package:device_preview/device_preview.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/app.dart';
import 'package:y_todo/src/core/cubit/navigation_cubit.dart';
import 'package:y_todo/src/core/cubit/navigation_state.dart';
import 'package:y_todo/src/core/domain/http_client.dart';
import 'package:y_todo/src/core/domain/network_client.dart';
import 'package:y_todo/src/core/navigation/parser.dart';
import 'package:y_todo/src/core/navigation/route_delegate.dart';
import 'package:y_todo/src/core/navigation/route_provider.dart';
import 'package:y_todo/src/feature/task_edit/bloc/task_edit_bloc.dart';
import 'package:y_todo/src/feature/task_edit/widget/task_edit_screen.dart';
import 'package:y_todo/src/feature/tasks/bloc/tasks_bloc.dart';
import 'package:y_todo/src/feature/tasks/data/data_provider/local_data_provider.dart';
import 'package:y_todo/src/feature/tasks/data/data_provider/remote_data_provider.dart';
import 'package:y_todo/src/feature/tasks/data/repository/tasks_repository.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';
import 'package:y_todo/src/feature/tasks/widget/tasks_screen.dart';

abstract class IAppFactory {
  Widget makeApp();
}

IAppFactory makeAppFactory() => _AppFactoryImpl();

class _AppFactoryImpl implements IAppFactory {
  final _diContainer = _DIContainer();
  @override
  Widget makeApp() => DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => BlocProvider.value(
          value: _diContainer._navigationCubit,
          child: MyApp(
            routeProvider: _diContainer._routeProvider,
            routerDelegate: _diContainer._routerDelegate(),
            routerParser: _diContainer._routerParser,
          ),
        ),
      );
}

class _DIContainer {
  late final TasksBloc _tasksBloc;

  final _httpClient = AppHttpClientImpl();
  final _localDataProvider = LocalDataProviderImpl.db;

  final _navigationCubit = NavigationCubit();
  final _routerParser = InformationParser();
  final _routeProvider = DebugRouteInformationProvider();

  final _listKey = GlobalKey<SliverAnimatedListState>();

  final _analytics = FirebaseAnalytics.instance;

  // Remote init
  INetworkClient _client() => NetworkClientImpl(_httpClient);
  IRemoteDataProvider _remoteDataProvider() =>
      RemoteDataProviderImpl(_client());

  // Navigation
  IScreenFactory _screenFactory() => _ScreenFactoryImpl(this);
  RouterDelegate<NavigationState> _routerDelegate() => AppRouterDelegate(
        navigationCubit: _navigationCubit,
        screenFactory: _screenFactory(),
      );

  ITasksRepository _repository() => TasksRepositoryImpl(
        remoteDataProvider: _remoteDataProvider(),
        localDataProvider: _localDataProvider,
      );

  _DIContainer() {
    _tasksBloc = TasksBloc(_repository(), _analytics);
  }
}

abstract class IScreenFactory {
  Page makeTasksScreen();
  Page makeTaskEditScreen({Task? initialTask});
}

class _ScreenFactoryImpl implements IScreenFactory {
  final _DIContainer _diContainer;
  const _ScreenFactoryImpl(this._diContainer);

  @override
  Page makeTaskEditScreen({
    Task? initialTask,
  }) {
    return MaterialPage(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => TaskEditBloc(
              initialTask: initialTask,
            ),
          ),
          BlocProvider.value(
            value: _diContainer._tasksBloc,
          )
        ],
        child: TaskEditScreen(
          listKey: _diContainer._listKey,
        ),
      ),
    );
  }

  @override
  Page makeTasksScreen() {
    return MaterialPage(
      child: BlocProvider.value(
        value: _diContainer._tasksBloc,
        child: TasksScreen(
          listKey: _diContainer._listKey,
        ),
      ),
    );
  }
}
