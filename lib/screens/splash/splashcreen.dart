// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:e_com/screens/auth/user/home_screen.dart';
import 'package:e_com/screens/welcomescreen/welcomescreen.dart';
import 'package:e_com/utils/appcontants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.offAll(() => WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Lottie.asset('assets/images/splash_screen.json')),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Center(
              child: Text(
                AppContants.appPoweredBy,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
