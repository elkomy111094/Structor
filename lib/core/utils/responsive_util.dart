import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Utility class for responsive UI.
class ResponsiveUtil {
  static double width(double value) => value.w;

  static double height(double value) => value.h;

  static double fontSize(double value) => value.sp;

  /// Initialize ScreenUtil.
  static void initResponsiveUtil(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812), // Replace with your design size.
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}
