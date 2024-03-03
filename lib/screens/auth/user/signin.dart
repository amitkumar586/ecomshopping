// ignore_for_file: prefer_const_constructors

import 'package:e_com/screens/auth/user/signup.dart';
import 'package:e_com/utils/appcontants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/commontextfield.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppContants.secondryAppColor,
          title: const Text("Sign In"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              isKeyboardVisible
                  ? SizedBox.shrink()
                  : Column(
                      children: [
                        Lottie.asset('assets/images/onboarding2.json')
                      ],
                    ),
              CommonTextBox(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                keyboardType: TextInputType.emailAddress,
              ),
              CommonTextBox(
                hintText: 'Password',
                prefixIcon: Icon(Icons.password),
                keyboardType: TextInputType.emailAddress,
                suffixIcon: Icon(Icons.visibility_off),
                obscureText: true,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                      color: AppContants.secondryAppColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: Get.height / 30,
              ),
              CommonButton(
                backgroundcolor: AppContants.secondryAppColor,
                onpressed: () {},
                titleText: "SIGN IN",
              ),
              SizedBox(
                height: Get.height / 500,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: AppContants.secondryAppColor),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offAll(() => SignUpScreen());
                    },
                    child: Text(
                      "Sing Up",
                      style: TextStyle(color: AppContants.secondryAppColor),
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 30,
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
