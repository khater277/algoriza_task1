import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:algoriza_task1/reusable_components.dart';
import 'package:flutter/material.dart';

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultOutLinedButton(
        borderColor: ColorManager.orange,
        rounded: 5,
        height: 42,
        width: double.infinity,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p5),
              child: Image.asset(
                "assets/images/google.png",
                width: AppSize.s18,
                height: AppSize.s18,
              ),
            ),
            Text(
              "Sign in with google",
              style: getMediumStyle(
                  color: ColorManager.orange,
                  fontSize: FontSize.s12),
            ),
          ],
        )
    );
  }
}
