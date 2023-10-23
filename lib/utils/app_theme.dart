import 'package:du_money_logger/utils/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
    fontFamily: 'ProductSans',
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.colorBorderInput,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      fillColor: AppColors.whiteColor,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      iconColor: AppColors.primaryColor,
      hintStyle: const TextStyle(
          color: AppColors.grayColor,
          fontSize: 12,
          fontWeight: FontWeight.w300),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
        textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        minimumSize: const Size(0, 50),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
        textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: AppColors.textBlack),
        minimumSize: const Size(0, 50),
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
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
