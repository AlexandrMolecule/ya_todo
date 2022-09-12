import 'package:flutter/material.dart';
import 'package:y_todo/src/core/constants/color.dart';
import 'package:y_todo/src/core/domain/remote_config_client.dart';

class AppTheme {
  AppTheme._();
  static ThemeData get lightTheme {
    return ThemeData(
        // useMaterial3: true,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.lLabelPrimary,
          onPrimary: AppColors.lColorBlue,
          secondary: AppColors.lColorBlue,
          onSecondary: AppColors.lColorBlue,
          error: AppColors.lColorRed,
          onError: Color(RemoteConfigClient.instance?.getRedColor ??
              AppColors.lColorRed.value),
          background: AppColors.lBackPrimary,
          onBackground: AppColors.lBackSecondary,
          surface: AppColors.lColorWhite,
          onSurface: AppColors.lColorWhite,
        ),
        backgroundColor: AppColors.lBackPrimary,
        unselectedWidgetColor: AppColors.lSupportSeparator,
        hintColor: AppColors.lLabelTertiary,
        disabledColor: AppColors.lLabelDisable,
        textTheme: const TextTheme(
          /// large title
          headlineLarge: TextStyle(
              fontSize: 32,
              height: 38 / 32,
              color: AppColors.lLabelPrimary,
              fontWeight: FontWeight.w500),

          /// Title
          titleLarge: TextStyle(
              fontSize: 20,
              height: 32 / 20,
              color: AppColors.lLabelPrimary,
              fontWeight: FontWeight.w500),

          /// Button (Сохранить, например)
          titleSmall: TextStyle(
              fontSize: 14,
              height: 24 / 14,
              color: AppColors.lColorBlue,
              fontWeight: FontWeight.w500),

          /// Body (most usefull)
          labelLarge: TextStyle(
              fontSize: 16,
              height: 20 / 16,
              color: AppColors.lLabelPrimary,
              fontWeight: FontWeight.w400),

          /// Body (most usefull)
          labelMedium: TextStyle(
              fontSize: 14, height: 20 / 14, color: AppColors.lLabelPrimary),
        ));
  }

//Dark
  static ThemeData get darkTheme {
    return ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: AppColors.dLabelPrimary,
          onPrimary: AppColors.dColorBlue,
          secondary: AppColors.dColorBlue,
          onSecondary: AppColors.dColorBlue,
          error: AppColors.dColorRed,
          onError: Color(RemoteConfigClient.instance?.getRedColor ??
              AppColors.dColorRed.value),
          background: AppColors.dBackPrimary,
          onBackground: AppColors.dBackSecondary,
          surface: AppColors.dColorWhite,
          onSurface: AppColors.dColorWhite,
        ),
        backgroundColor: AppColors.dBackPrimary,
        unselectedWidgetColor: AppColors.dSupportSeparator,
        hintColor: AppColors.dLabelTertiary,
        disabledColor: AppColors.dLabelDisable,
        textTheme: const TextTheme(
          /// large title
          headlineLarge: TextStyle(
              fontSize: 32,
              height: 38 / 32,
              color: AppColors.dLabelPrimary,
              fontWeight: FontWeight.w500),

          /// Title
          titleLarge: TextStyle(
              fontSize: 20,
              height: 32 / 20,
              color: AppColors.dLabelPrimary,
              fontWeight: FontWeight.w500),

          /// Button (Сохранить, например)
          titleSmall: TextStyle(
              fontSize: 14,
              height: 24 / 14,
              color: AppColors.dColorBlue,
              fontWeight: FontWeight.w500),

          /// Body (most usefull)
          labelLarge: TextStyle(
              fontSize: 16,
              height: 20 / 16,
              color: AppColors.dLabelPrimary,
              fontWeight: FontWeight.w400),

          /// Body (most usefull)
          labelMedium: TextStyle(
              fontSize: 14, height: 20 / 14, color: AppColors.dLabelPrimary),
        )
    );
  }
}
