import 'package:du_money_logger/splash_screen.dart';
import 'package:du_money_logger/utils/extensions/context_ext.dart';
import 'package:du_money_logger/utils/route/route_names.dart';
import 'package:flutter/material.dart';

extension GenerateRoute on RouteSettings {
  dynamic get generateRoute {
    switch (name) {
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            body: Center(
              child: Text(
                context.localization.pageNotFound,
              ),
            ),
          ),
        );
    }
  }
}
