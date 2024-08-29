import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/common_widgets/k_text_form_field.dart';
import 'package:furniture_app/common_widgets/round_buttons.dart';
import 'package:furniture_app/resource/app_color.dart';
import 'package:furniture_app/resource/extensions/num_ext.dart';
import 'package:furniture_app/resource/text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              80.heightBox,
              const Center(
                  child: Image(
                      image: AssetImage("assets/images/png/login_pic.png"))),
              30.heightBox,
              Text(
                "Log in your account",
                style: KTextStyle.K_24
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              5.heightBox,
              Text(
                "Enter your login details to",
                style: KTextStyle.K_12
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              Text(
                "access your account",
                style: KTextStyle.K_12
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              20.heightBox,
              KTextFormField(
                  controller: phoneNumberController,
                  hintText: "Username",
                  prefixIcon: Icon(Icons.phone)),
              10.heightBox,
              KTextFormField(
                  controller: phoneNumberController,
                  hintText: "Password",
                  prefixIcon: Icon(Icons.email)),
              4.heightBox,
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Don't have account?",
                  style: KTextStyle.K_10
                      .copyWith(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
              12.heightBox,
              RoundButtons(title: "Log in", onPress: () {}),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: KTextStyle.K_10.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  2.heightBox,
                  Text(
                    "Terms of Service",
                    style: KTextStyle.K_10.copyWith(color: AppColor.darkBlue),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
