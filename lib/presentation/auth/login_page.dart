import 'package:du_money_logger/common/widgets/app_icon_widget.dart';
import 'package:du_money_logger/utils/app_icons.dart';
import 'package:du_money_logger/utils/app_text_style.dart';
import 'package:du_money_logger/utils/extensions/context_ext.dart';
import 'package:du_money_logger/utils/extensions/strring_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoPageScaffold(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.3.sw),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.localization.appName,
                style: AppTextStyles.logoTextStylePrimary,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                context.localization.email,
                style: AppTextStyles.textStyleBlackRegular,
              ),
              SizedBox(
                height: 8.h,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: context.localization.enterYourEmail,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                context.localization.password,
                style: AppTextStyles.textStyleBlackRegular,
              ),
              SizedBox(
                height: 8.h,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: '*'.multiply(6),
                    suffix: SvgPicture.asset(
                      AppIcons.eye,
                      fit: BoxFit.cover,
                    )),
                obscureText: true,
              ),
              // notification message
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                height: 17.h,
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoButton(
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Text(
                        context.localization.createAccount,
                        style: AppTextStyles.textStylePrimaryRegular12,
                      )),
                  CupertinoButton(
                    onPressed: () {},
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Text(
                      context.localization.forgotPassword,
                      style: AppTextStyles.textStylePrimaryRegular12,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(context.localization.login),
                ),
              ),
              _thirdPartyButton(
                  AppIcons.logo.apple, context.localization.signInWithApple),
              SizedBox(
                height: 12.h,
              ),
              _thirdPartyButton(AppIcons.logo.facebook,
                  context.localization.signInWithFacebook),
              SizedBox(
                height: 12.h,
              ),
              _thirdPartyButton(
                  AppIcons.logo.google, context.localization.signInWithGoogle),
              SizedBox(
                height: 12.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _thirdPartyButton(String iconPath, String title) {
    return OutlinedButton(
      onPressed: () {},
      // padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIconWidget(
            iconPath: iconPath,
            width: 24.w,
            height: 24.h,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            title,
            style: AppTextStyles.textStylePrimaryRegular12,
          ),
        ],
      ),
    );
  }
}
