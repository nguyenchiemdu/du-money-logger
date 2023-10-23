import 'package:du_money_logger/utils/extensions/strring_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIconWidget extends StatelessWidget {
  const AppIconWidget(
      {required this.iconPath,
      required this.width,
      required this.height,
      super.key});
  final String iconPath;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    String ext = iconPath.getFileExtension();
    if (ext == 'svg') {
      return SvgPicture.asset(
        iconPath,
        width: width,
        height: height,
      );
    }
    return Image.asset(
      iconPath,
      width: width,
      height: height,
    );
  }
}
