import 'dart:developer';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:y_todo/src/core/constants/color.dart';

class RemoteConfigClient {
  final FirebaseRemoteConfig _remoteConfig;
  RemoteConfigClient({required FirebaseRemoteConfig remoteConfig})
      : _remoteConfig = remoteConfig;

  static const _colorRed = "error_color_1";

  final defaults = <String, int>{
    _colorRed: AppColors.lColorRed.value,
  };

  static RemoteConfigClient? _instance;
  static RemoteConfigClient? get instance => _instance ??= RemoteConfigClient(
        remoteConfig: FirebaseRemoteConfig.instance,
      );

  int get getRedColor => _remoteConfig.getInt(_colorRed);

  Future initialize() async {
    try {
      await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(hours: 1),
      ));
      await _remoteConfig.setDefaults(defaults);
      await _fetchAndActivate();
    } on Exception catch (e) {
      log('$e');
    }
  }

  Future _fetchAndActivate() async {
    await _remoteConfig.fetchAndActivate();
    log(getRedColor.toString());
  }
}
