
import 'package:algoriza_task1/screens/onBoarding/onBoarding_items/page_content.dart';
import 'package:algoriza_task1/screens/onBoarding/onBoarding_items/sign_up.dart';
import 'package:algoriza_task1/screens/onBoarding/onBoarding_items/skip_button.dart';
import 'package:algoriza_task1/screens/onBoarding/onBoarding_items/PageIndicator.dart';
import 'package:algoriza_task1/screens/onBoarding/onBoarding_items/get_started_button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    const List<Map<String, String>> onBoardingScreens = [
      {
        "image": "assets/images/1.png",
        "title": "Find Food You Love",
        "description":
            "we are constantly added your favorites restaurant through out the territory and around your area carefully selected"
      },
      {
        "image": "assets/images/2.png",
        "title": "Fast Delivery",
        "description":
            "we have young and professional delivery team that will bring your food as soon as possible to your doorstep"
      },
      {
        "image": "assets/images/3.png",
        "title": "Live Tracking",
        "description":
            "Real time tracking of your food on the app once you placed the order"
      },
    ];


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SkipButton(),
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => PageContent(
                  image: onBoardingScreens[index]['image']!,
                  title: onBoardingScreens[index]['title']!,
                  description: onBoardingScreens[index]['description']!,
                ),
                itemCount: onBoardingScreens.length,
                onPageChanged: (int value) {
                  debugPrint(value.toString());
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                      child: PageIndicator(pageController: pageController, count: onBoardingScreens.length)),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        GetStartedButton(),
                        SignUp(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
