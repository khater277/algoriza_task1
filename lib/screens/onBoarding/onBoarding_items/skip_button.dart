import 'package:algoriza_task1/constant.dart';
import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:algoriza_task1/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigateAndFinish(context: context, screen: const LoginScreen());
      },
      child: Padding(
        padding: const EdgeInsets.only(
            top: AppPadding.p14,
            bottom: AppPadding.p10,
            right: AppPadding.p10,
            left: AppPadding.p10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                padding: const EdgeInsets.symmetric(
                    vertical: AppPadding.p8, horizontal: AppPadding.p12),
                decoration: BoxDecoration(
                    color: ColorManager.lightGrey.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "SKIP",
                  style: getMediumStyle(
                      fontSize: FontSize.s14, color: ColorManager.grey),
                )
            ),
          ],
        ),
      ),
    );
  }
}
