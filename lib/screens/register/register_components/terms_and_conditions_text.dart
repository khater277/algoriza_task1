import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p10),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "By registering your account, you are agree to our ",
              style: getLightStyle(
                  color: ColorManager.lightGrey,
                  fontSize: FontSize.s12,
                  height: 2),

              children: [
                TextSpan(
                    text: "terms and conditions",
                    style: getRegularStyle(
                        color: Colors.blue,
                        fontSize: FontSize.s12,
                        height: 2)
                )
              ]
          )
      ),
    );
  }
}
