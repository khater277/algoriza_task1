import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:algoriza_task1/screens/login/login_components/google_sign_in.dart';
import 'package:algoriza_task1/screens/login/login_components/help_button.dart';
import 'package:algoriza_task1/screens/login/login_components/login_phone_text_field.dart';
import 'package:algoriza_task1/screens/login/login_components/login_policy_text.dart';
import 'package:algoriza_task1/screens/login/login_components/or_divider.dart';
import 'package:algoriza_task1/screens/login/login_components/regester_here.dart';
import 'package:algoriza_task1/screens/login/login_components/sign_in_button.dart';
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
                          const SignInButton(),
                          const SizedBox(
                            height: AppPadding.p14,
                          ),
                          const OrDivider(),
                          const SizedBox(
                            height: AppPadding.p14,
                          ),
                          const GoogleSignIn(),
                          const RegisterHere(),
                          const LoginPolicyText(),
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
