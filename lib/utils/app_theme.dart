import 'package:du_money_logger/utils/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.accentColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
    ),
    colorScheme: ThemeData().colorScheme.copyWith(
        primary: AppColors.primaryColor, secondary: AppColors.secondaryColor),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    indicatorColor: AppColors.colorSelectedIndicator);
