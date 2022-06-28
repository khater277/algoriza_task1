import 'package:algoriza_task1/app/reusable_components.dart';
import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p2,
          horizontal: AppPadding.p10
      ),
      child: DefaultElevatedButton(
          color: ColorManager.orange,
          rounded: 5,
          height: 45,
          width: double.infinity,
          onPressed: (){

          },
          child: Text("Get Started",
            style: getSemiBoldStyle(color: Colors.white,fontSize: FontSize.s14),)
      ),
    );
  }
}
