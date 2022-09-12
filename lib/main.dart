import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:y_todo/firebase_options.dart';
import 'package:y_todo/src/core/bloc/app_bloc_observer.dart';
import 'package:y_todo/src/core/constants/color.dart';
import 'package:y_todo/src/core/di/di.dart';
import 'package:y_todo/src/core/domain/remote_config_client.dart';
import 'package:y_todo/src/core/logger/logging.dart';

void main() => runZonedGuarded<void>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
          statusBarColor: AppColors.lBackPrimary,
        ));
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
        await RemoteConfigClient(remoteConfig: FirebaseRemoteConfig.instance)
            .initialize();

        initLogger();

        FlutterError.onError = (error) {
          Logger.root
              .severe(error.toStringShort(), error.exception, error.stack);
        };
        BlocOverrides.runZoned(
          () {
            final appFactory = makeAppFactory();
            final app = appFactory.makeApp();

            runApp(app);
          },
          blocObserver: AppBlocObserver.instance(),
          eventTransformer: sequential<Object?>(),
        );
      },
      (error, stack) {
        Logger.root.shout('Fatal error $error', error, stack);
      },
    );
