import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:bookit_vendor_app/view/authentication/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/views/home_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            SizedBox(
                width: 300,
                height: 300,
                child: Image.asset('assets/logo/v.png')),
            const Text(
              'LOGIN TO CONTINUE',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 3),
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'Enter your email address',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: blue))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: blue, minimumSize: const Size(120, 45)),
                onPressed: () {
                  Get.to(HomeView());
                },
                child: const Text('LOGIN',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2))),
            TextButton(
                style: TextButton.styleFrom(primary: blue),
                onPressed: () {
                  Get.to(const RegisterScreen());
                },
                child: const Text('Don\'t have an account? Register',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2)))
          ],
        ),
      ),
    ));
  }
}
