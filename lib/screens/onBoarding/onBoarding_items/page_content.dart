import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const PageContent({Key? key, required this.image, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Image.asset(image)
        ),
        const SizedBox(height: AppPadding.p8,),
        Text(
          title,
          style: getBoldStyle(color: ColorManager.grey,fontSize: FontSize.s25),
        ),
        const SizedBox(height: AppPadding.p5,),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p5,
            horizontal: AppPadding.p20
          ),
          child: Text(
            description,
            style: getRegularStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}
