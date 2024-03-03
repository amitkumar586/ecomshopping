// ignore_for_file: prefer_const_constructors

import 'package:e_com/screens/auth/user/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import '../../../utils/appcontants.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/commontextfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppContants.secondryAppColor,
          title: const Text("Sign Up"),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: Get.height / 50,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    color: AppContants.secondryAppColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height / 50,
              ),
              CommonTextBox(
                hintText: 'User Name',
                prefixIcon: Icon(Icons.person),
                keyboardType: TextInputType.name,
              ),
              CommonTextBox(
                hintText: 'City',
                prefixIcon: Icon(Icons.location_city),
                keyboardType: TextInputType.streetAddress,
                obscureText: true,
              ),
              CommonTextBox(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                keyboardType: TextInputType.emailAddress,
              ),
              CommonTextBox(
                hintText: 'phone',
                prefixIcon: Icon(Icons.phone),
                keyboardType: TextInputType.phone,
              ),
              CommonTextBox(
                hintText: 'Password',
                prefixIcon: Icon(Icons.password),
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: Icon(Icons.visibility_off),
                obscureText: true,
              ),
              SizedBox(
                height: Get.height / 50,
              ),
              CommonButton(
                sizes: 8,
                height: Get.height / 12,
                width: Get.width,
                backgroundcolor: AppContants.secondryAppColor,
                onpressed: () {},
                titleText: "SIGN IN",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Allready have an account?",
                    style: TextStyle(color: AppContants.secondryAppColor),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offAll(() => SigninScreen());
                    },
                    child: Text(
                      "Sing In",
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
