import 'dart:developer';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logging/logging.dart';

   void initLogger() {
    Logger('logger');
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((event) {
      log(
        event.message,
        time: event.time,
        sequenceNumber: event.sequenceNumber,
        level: event.level.value,
        name: event.loggerName,
        zone: event.zone,
        error: event.error,
        stackTrace: event.stackTrace,
      );
      if (event.level == Level.SEVERE || event.level == Level.SHOUT) {
        FirebaseCrashlytics.instance.recordError(event.error, event.stackTrace);
      }
    });
    Logger.root.info('Logger is initialized');
  }
