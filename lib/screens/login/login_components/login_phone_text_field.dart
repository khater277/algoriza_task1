import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:algoriza_task1/reusable_components.dart';
import 'package:country_code_picker/country_code_picker.dart';
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
        Row(
          children: [
            Container(
              height: 47,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: ColorManager.lightGrey.withOpacity(0.3)
                )
              ),
              child: CountryCodePicker(
                onChanged: print,
                initialSelection: 'EG',
                favorite: const ['+20','EG'],
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: false,
                flagWidth: 20,
                padding: const EdgeInsets.all(0),
              ),
            ),
            const SizedBox(width: AppPadding.p5,),
            Expanded(
              child: LoginRegisterTextField(
                  controller: phoneController,
                  textInputType: TextInputType.phone,
                  hint: "Eg.01011677722")
            ),
          ],
        ),
      ],
    );
  }
}
