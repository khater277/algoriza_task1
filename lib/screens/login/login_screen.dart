import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:algoriza_task1/reusable_components.dart';
import 'package:algoriza_task1/screens/login/login_components/help_button.dart';
import 'package:algoriza_task1/screens/login/login_components/or_divider.dart';
import 'package:algoriza_task1/screens/login/login_components/login_phone_text_field.dart';
import 'package:algoriza_task1/screens/login/login_components/regester_here.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/loginWP.jpg",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * (1 / 4),
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome to Fast Food",
                            style: getRegularStyle(
                                color: ColorManager.lightGrey,
                                fontSize: FontSize.s16),
                          ),
                          const SizedBox(
                            height: AppPadding.p20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Sign in",
                                style: getSemiBoldStyle(
                                    color: ColorManager.grey,
                                    fontSize: FontSize.s25),
                              ),
                              const Spacer(),
                              const HelpButton(),
                            ],
                          ),
                          const SizedBox(
                            height: AppPadding.p20,
                          ),
                          LoginPhoneTextField(phoneController: _phoneController),
                          const SizedBox(
                            height: AppPadding.p20,
                          ),
                          DefaultElevatedButton(
                              color: ColorManager.orange,
                              rounded: 5,
                              height: 42,
                              width: double.infinity,
                              onPressed: () {},
                              child: Text(
                                "Sign in",
                                style: getSemiBoldStyle(
                                    color: Colors.white,
                                    fontSize: FontSize.s14),
                              )),
                          const SizedBox(
                            height: AppPadding.p14,
                          ),
                          const OrDivider(),
                          const SizedBox(
                            height: AppPadding.p14,
                          ),
                          DefaultOutLinedButton(
                              borderColor: ColorManager.orange,
                              rounded: 5,
                              height: 42,
                              width: double.infinity,
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: AppPadding.p5),
                                    child: Image.asset(
                                      "assets/images/google.png",
                                      width: AppSize.s18,
                                      height: AppSize.s18,
                                    ),
                                  ),
                                  Text(
                                    "Sign in with google",
                                    style: getMediumStyle(
                                        color: ColorManager.orange,
                                        fontSize: FontSize.s12),
                                  ),
                                ],
                              )),
                          const RegisterHere(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppPadding.p10),
                            child: Text(
                              "Using the application according to policy rules, Any kind of violations will be subject to sanctions",
                              style: getLightStyle(
                                  color: ColorManager.lightGrey,
                                  fontSize: FontSize.s12,
                                  height: 2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
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
