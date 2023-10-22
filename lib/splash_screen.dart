import 'package:du_money_logger/utils/colors.dart';
import 'package:du_money_logger/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                context.localization.appName,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
