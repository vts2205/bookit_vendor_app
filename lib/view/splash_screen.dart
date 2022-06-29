import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:bookit_vendor_app/view/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToOnBoardingScreen();
  }

  navigateToOnBoardingScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.offAll(const OnBoardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [blue.withOpacity(0.4), white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(child: Image.asset('assets/logo/v.png')),
      ),
    );
  }
}
