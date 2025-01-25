import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';

/// Defines the app's light and dark themes.
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      titleTextStyle:
          AppTextStyles.headline2.copyWith(color: AppColors.primary),
      iconTheme: const IconThemeData(color: AppColors.primary),
    ),
    textTheme: TextTheme(
      headlineLarge: AppTextStyles.headline1,
      headlineMedium: AppTextStyles.headline2,
      headlineSmall: AppTextStyles.bodyText1,
      bodyLarge: AppTextStyles.bodyText2,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.secondary,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      titleTextStyle:
          AppTextStyles.headline2.copyWith(color: AppColors.primary),
      iconTheme: const IconThemeData(color: AppColors.primary),
    ),
    textTheme: TextTheme(
      headlineLarge: AppTextStyles.headline1,
      headlineMedium: AppTextStyles.headline2,
      headlineSmall: AppTextStyles.bodyText1,
      bodyLarge: AppTextStyles.bodyText2,
    ),
  );
}
