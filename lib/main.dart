import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:bookit_vendor_app/view/home/home_view.dart';
import 'package:bookit_vendor_app/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: blue));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'vendor app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
