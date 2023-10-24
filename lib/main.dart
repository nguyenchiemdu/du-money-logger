import 'package:du_money_logger/presentation/auth/login_page.dart';
import 'package:du_money_logger/splash_screen.dart';
import 'package:du_money_logger/utils/app_theme.dart';
import 'package:du_money_logger/utils/locator.dart';
import 'package:du_money_logger/utils/route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupLocators();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (RouteSettings settings) => settings.generateRoute,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('vi'),
        ],
        theme: appTheme,
        home: FutureBuilder(
            // future: Future.wait([
            //   Firebase.initializeApp(
            //       options: DefaultFirebaseOptions.currentPlatform),
            //   () async {
            //     await SharedPrefService.instance.onInit();
            //     await context.read<UserManager>().getUserInfor();
            //   }(),
            // ]),
            future: Future.delayed(const Duration(seconds: 1)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SplashScreen();
              } else {
                return const LoginPage();
              }
            }));
  }
}
