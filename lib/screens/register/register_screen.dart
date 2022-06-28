import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:algoriza_task1/reusable_components.dart';
import 'package:algoriza_task1/screens/login/login_components/help_button.dart';
import 'package:algoriza_task1/screens/login/login_components/login_phone_text_field.dart';
import 'package:algoriza_task1/screens/login/login_components/or_divider.dart';
import 'package:algoriza_task1/screens/register/register_components/sign_in_here.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
                    height: MediaQuery.of(context).size.height * (1 / 8),
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
                                "Register",
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
                          ///email text field
                          const TextFieldHead(name: "Email"),
                          LoginRegisterTextField(
                              controller: _emailController,
                              textInputType: TextInputType.emailAddress,
                              hint: "Eg.example@email.com"),
                          const SizedBox(
                            height: AppPadding.p10,
                          ),
                          ///phone text field
                          LoginPhoneTextField(phoneController: _phoneController),
                          const SizedBox(
                            height: AppPadding.p10,
                          ),
                          ///password text field
                          const TextFieldHead(name: "Password"),
                          LoginRegisterTextField(
                              controller: _passwordController,
                              textInputType: TextInputType.text,
                              hint: "Password"),
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
                                "Register",
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
                          const SignInHere(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppPadding.p10),
                            child: Text(
                              "By registering your account, you are agree to our terms and conditions",
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

class TextFieldHead extends StatelessWidget {
  final String name;
  const TextFieldHead({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: getMediumStyle(
              color: ColorManager.lightGrey, fontSize: FontSize.s14),
        ),
        const SizedBox(
          height: AppPadding.p8,
        ),
      ],
    );
  }
}
