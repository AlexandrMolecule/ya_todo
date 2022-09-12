import 'dart:ui';

class AppColors {
  static const experimentalError = Color(0xff793cd8);

  /// Light
  static final lSupportSeparator = const Color(0xff000000).withOpacity(0.2);
  static final lSupportOverlay = const Color(0xff000000).withOpacity(0.06);

  static const lLabelPrimary = Color(0xff000000);
  static final lLabelSecondary = const Color(0xff000000).withOpacity(0.6);
  static final lLabelTertiary = const Color(0xff000000).withOpacity(0.3);
  static final lLabelDisable = const Color(0xff000000).withOpacity(0.15);

  static const lColorRed = Color(0xffFF3B30);
  static const lColorGreen = Color(0xff34C759);
  static const lColorBlue = Color(0xff007AFF);
  static const lColorGray = Color(0xff8E8E93);
  static const lColorGrayLight = Color(0xffD1D1D6);
  static const lColorWhite = Color(0xffFFFFFF);

  static const lBackPrimary = Color(0xffF7F6F2);
  static const lBackSecondary = Color(0xffFFFFFF);
  static const lBackElevated = Color(0xffFFFFFF);

  /// Dark
  static final dSupportSeparator = const Color(0xffFFFFFF).withOpacity(0.2);
  static final dSupportOverlay = const Color(0xff000000).withOpacity(0.32);

  static const dLabelPrimary = Color(0xffFFFFFF);
  static final dLabelSecondary = dLabelPrimary.withOpacity(0.6);
  static final dLabelTertiary = dLabelPrimary.withOpacity(0.4);
  static final dLabelDisable = dLabelPrimary.withOpacity(0.15);

  static const dColorRed = Color(0xffFF453A);
  static const dColorGreen = Color(0xff32D74B);
  static const dColorBlue = Color(0xff0A84FF);
  static const dColorGray = Color(0xff8E8E93);
  static const dColorGrayLight = Color(0xff48484A);
  static const dColorWhite = Color(0xffFFFFFF);

  static const dBackPrimary = Color(0xff161618);
  static const dBackSecondary = Color(0xff252528);
  static const dBackElevated = Color(0xff3C3C3F);
}
