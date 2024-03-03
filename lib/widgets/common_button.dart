import 'package:flutter/material.dart';
import '../utils/appcontants.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    this.backgroundcolor,
    this.img,
    this.titleText,
    this.onpressed,
    this.height,
    this.width,
    this.sizes,
  });

  final double? height, width;
  final Color? backgroundcolor;
  final Image? img;
  final String? titleText;
  final VoidCallback? onpressed;
  final double? sizes;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: sizes!),
      decoration: BoxDecoration(
          color: backgroundcolor, borderRadius: BorderRadius.circular(10)),
      height: height,
      width: width,
      child: TextButton.icon(
        icon: img,
        onPressed: onpressed,
        label: Text(
          titleText!,
          style: const TextStyle(color: AppContants.appTextColor),
        ),
      ),
    );
  }
}
