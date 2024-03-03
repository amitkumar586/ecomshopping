// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/common_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // color: Colors.amber,
                child: Lottie.asset(
                  'assets/images/onboarding3.json',
                  height: Get.height * 0.4,
                ),
              ),
              SizedBox(
                height: Get.height / 20,
              ),
              Text("Happy Shopping"),
              SizedBox(
                height: Get.height / 20,
              ),
              // LoginButton(
              //   backgroundcolor: Colors.amber,
              //   imgUrl: 'assets/images/google.png',
              //   onpressed: () {},
              //   titleText: "Signup with google",
              // ),
              SizedBox(
                height: Get.height / 40,
              ),
              CommonButton(
                backgroundcolor: Colors.amber,
                img: Image.asset(
                  'assets/images/email-logo.png',
                  height: Get.height / 12,
                  width: Get.width / 12,
                ),
                // imgUrl: 'assets/images/email-logo.png',
                onpressed: () {},
                titleText: "Signup with email",
              ),
              SizedBox(
                height: Get.height / 40,
              ),
              // LoginButton(
              //   backgroundcolor: Colors.amber,
              //   imgUrl: 'assets/images/mobile-logo.jpg',
              //   onpressed: () {},
              //   titleText: "Signup with mobile",
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
