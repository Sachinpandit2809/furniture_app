import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/common_widgets/k_text_form_field.dart';
import 'package:furniture_app/common_widgets/round_buttons.dart';
import 'package:furniture_app/resource/app_color.dart';
import 'package:furniture_app/resource/extensions/num_ext.dart';
import 'package:furniture_app/resource/text_style.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
                      image: AssetImage("assets/images/png/signin_pic.png"))),
              30.heightBox,
              Text(
                "Log in or sign up",
                style: KTextStyle.K_24
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              5.heightBox,
              Text(
                "Select desire log in method",
                style: KTextStyle.K_12
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              20.heightBox,
              KTextFormField(
                  controller: phoneNumberController,
                  hintText: "Phone Number",
                  prefixIcon: Icon(Icons.phone)),
              10.heightBox,
              KTextFormField(
                  controller: phoneNumberController,
                  hintText: "email Address",
                  prefixIcon: Icon(Icons.email)),
              20.heightBox,
              RoundButtons(title: "Log in with google", onPress: () {}),
              20.heightBox,
              Text(
                "By registering or skipping this your agree to",
                style: KTextStyle.K_10
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              2.heightBox,
              Text(
                "Terms of Service",
                style: KTextStyle.K_10.copyWith(color: AppColor.darkBlue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
