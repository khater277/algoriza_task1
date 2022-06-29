import 'package:algoriza_task1/constant.dart';
import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:algoriza_task1/screens/register/register_screen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppPadding.p10,
        left: AppPadding.p10,
        right: AppPadding.p10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account? ",
            style: getSemiBoldStyle(color: ColorManager.grey,fontSize: FontSize.s14),),
          GestureDetector(
            onTap: (){
              navigateTo(context: context, screen: const RegisterScreen());
            },
            child: Text("Sign up",
              style: getSemiBoldStyle(color: ColorManager.orange,fontSize: FontSize.s14),),
          )
        ],
      ),
    );
  }
}
