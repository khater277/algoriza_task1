import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/reusable_components.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultElevatedButton(
        color: ColorManager.orange,
        rounded: 5,
        height: 42,
        width: double.infinity,
        onPressed: () {},
        child: Text(
          "Sign in",
          style: getSemiBoldStyle(
              color: Colors.white,
              fontSize: FontSize.s14),
        ));
  }
}
