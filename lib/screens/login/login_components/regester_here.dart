import 'package:algoriza_task1/constant.dart';
import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:algoriza_task1/screens/register/register_screen.dart';
import 'package:flutter/material.dart';

class RegisterHere extends StatelessWidget {
  const RegisterHere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Doesn't has any account? ",
            style: getMediumStyle(
                color: ColorManager.grey, fontSize: FontSize.s14),
          ),
          GestureDetector(
            onTap: () {
              // FocusScope.of(context).unfocus();
              navigateTo(context: context, screen: const RegisterScreen());
            },
            child: Text(
              "Register here",
              style: getMediumStyle(
                  color: ColorManager.orange, fontSize: FontSize.s14),
            ),
          )
        ],
      ),
    );
  }
}
