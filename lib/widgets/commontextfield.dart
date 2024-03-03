import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/appcontants.dart';

class CommonTextBox extends StatelessWidget {
  const CommonTextBox({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.textEditingController,
    this.suffixIcon,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
  });

  final String hintText;
  final Widget? prefixIcon, suffixIcon;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final Function? validator;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            obscureText: obscureText!,
            controller: textEditingController,
            validator: (input) => validator!(),
            cursorColor: AppContants.secondryAppColor,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }
}
