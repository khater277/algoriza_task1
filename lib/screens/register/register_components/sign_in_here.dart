import 'package:algoriza_task1/constant.dart';
import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:algoriza_task1/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class SignInHere extends StatelessWidget {
  const SignInHere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Has any account? ",
            style: getMediumStyle(
                color: ColorManager.grey, fontSize: FontSize.s14),
          ),
          GestureDetector(
            onTap: () {
              navigateAndFinish(context: context, screen: const LoginScreen());
            },
            child: Text(
              "Sign in here",
              style: getMediumStyle(
                  color: ColorManager.orange, fontSize: FontSize.s14),
            ),
          )
        ],
      ),
    );
  }
}
