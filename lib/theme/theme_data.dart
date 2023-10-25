import 'package:flutter/material.dart';
import 'package:smart_shop/theme/app_colors.dart';

class Styles {
  static ThemeData themeData(
      {required bool isDarkTheme, required BuildContext context}) {
    return ThemeData(
        textTheme: TextTheme(
          bodyMedium:
              TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
          titleMedium:
              TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
          titleSmall:
              TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
        ),
        scaffoldBackgroundColor: isDarkTheme
            ? AppColors.darkScaffoldColor
            : AppColors.lightScaffoldColor,
        cardColor:
            isDarkTheme ? AppColors.darkCardColor : AppColors.lightCardColor,
        appBarTheme: AppBarTheme(
            elevation: 0,
            titleTextStyle: TextStyle(
                fontSize: 18, color: isDarkTheme ? Colors.white : Colors.black),
            backgroundColor: isDarkTheme
                ? AppColors.darkScaffoldColor
                : AppColors.lightScaffoldColor));
  }
}
