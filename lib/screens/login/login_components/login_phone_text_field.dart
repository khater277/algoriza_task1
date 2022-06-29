import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:algoriza_task1/reusable_components.dart';
import 'package:flutter/material.dart';

class LoginPhoneTextField extends StatelessWidget {
  final TextEditingController phoneController;

  const LoginPhoneTextField({Key? key, required this.phoneController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Number",
          style: getMediumStyle(
              color: ColorManager.lightGrey, fontSize: FontSize.s14),
        ),
        const SizedBox(
          height: AppPadding.p8,
        ),
        LoginRegisterTextField(
            controller: phoneController,
            isPhone: true,
            textInputType: TextInputType.phone,
            hint: "Eg.01011677722"),
      ],
    );
  }
}
