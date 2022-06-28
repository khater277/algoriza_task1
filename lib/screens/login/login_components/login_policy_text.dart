import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:flutter/material.dart';

class LoginPolicyText extends StatelessWidget {
  const LoginPolicyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p10),
      child: Text(
        "Using the application according to policy rules, Any kind of violations will be subject to sanctions",
        style: getLightStyle(
            color: ColorManager.lightGrey,
            fontSize: FontSize.s12,
            height: 2),
        textAlign: TextAlign.center,
      ),
    );
  }
}
