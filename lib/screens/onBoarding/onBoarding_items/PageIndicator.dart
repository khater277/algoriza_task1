
import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  final PageController pageController;
  final int count;
  const PageIndicator({Key? key, required this.pageController, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(
          vertical: AppPadding.p8
      ),
      child: SmoothPageIndicator(
        controller: pageController,
        count:  count,
        axisDirection: Axis.horizontal,
        effect:  ExpandingDotsEffect(
            dotWidth : AppSize.s8,
            dotHeight : AppSize.s8,
            spacing : AppPadding.p5,
            radius : 8.0,
            dotColor:  Colors.grey.shade300,
            activeDotColor:  ColorManager.orange
        ),
      ),
    );
  }
}
