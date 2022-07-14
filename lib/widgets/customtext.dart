import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text, this.Color, this.fontsize, this.FontWeight})
      : super(key: key);
  final String text;
  final Color;
  final double? fontsize;
  final FontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color,
        fontSize: fontsize ?? 16,
        fontWeight: FontWeight
      ),
      textScaleFactor: Get.textScaleFactor,
    );
  }
}
