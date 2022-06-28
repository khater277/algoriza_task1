import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: ColorManager.lightGrey,)),
        Padding(
          padding:  const EdgeInsets.symmetric(horizontal: AppPadding.p2),
          child: Text(
            "Or",
            style: getRegularStyle(
                color: ColorManager.lightGrey,
                fontSize: FontSize.s14),
          ),
        ),
        const Expanded(child: Divider(color: ColorManager.lightGrey,)),
      ],
    );
  }
}
