import 'package:du_money_logger/utils/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.accentColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: AppColors.colorBorderInput)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: AppColors.primaryColor)),
      fillColor: AppColors.whiteColor,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      iconColor: AppColors.primaryColor,
      hintStyle: const TextStyle(
          color: AppColors.grayColor,
          fontSize: 14,
          fontWeight: FontWeight.w300),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 0,
        textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        minimumSize: const Size(0, 40),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),
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
