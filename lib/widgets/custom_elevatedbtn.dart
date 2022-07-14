import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomElevatedbutton extends StatelessWidget {
  const CustomElevatedbutton(
      {Key? key,
      this.onPressed,
      required this.text,
      this.Color,
      this.fontsize,
      this.FontWeight})
      : super(key: key);
  final onPressed;
  final String text;

  final Color;
  final double? fontsize;
  final FontWeight;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(primary: green),
        child: Text(
          text,
          style: TextStyle(
              color: Color, fontSize: fontsize ?? 16, fontWeight: FontWeight),
          textScaleFactor: Get.textScaleFactor,
        ));
  }
}
