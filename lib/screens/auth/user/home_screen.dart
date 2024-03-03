import 'package:flutter/material.dart';

import '../../../utils/appcontants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppContants.mainAppColor,
        centerTitle: true,
        title: Text(AppContants.appName),
      ),
    );
  }
}
