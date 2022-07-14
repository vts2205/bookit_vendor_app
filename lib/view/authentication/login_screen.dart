import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:bookit_vendor_app/view/authentication/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_view.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 50),
              SizedBox(
                  width: Get.width * 0.6,
                  height: Get.height * 0.4,
                  child: Image.asset('assets/logo/bookitlogo.png')),
              const Text(
                'LOGIN TO CONTINUE',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
              SizedBox(height: Get.height * 0.05),
              TextFormField(
                cursorColor: blue,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: 'Enter your Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blue, width: 2))),
                validator: (value) {
                  if (value?.length != 10) {
                    return "Enter registered phone number";
                  }
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                cursorColor: blue,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blue, width: 2))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your password";
                  }
                },
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: blue, minimumSize: const Size(120, 45)),
                  // onPressed: () {
                  //   if (formKey.currentState!.validate()) {
                  //     Get.to(const HomeView());
                  //   }
                  // },
                  onPressed: () {
                    Get.to(const HomeView());
                  },
                  child: const Text('LOGIN',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2))),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2)),
                  TextButton(
                    style: TextButton.styleFrom(primary: blue),
                    onPressed: () {
                      Get.to(const RegisterScreen());
                    },
                    child: const Text('Register',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
