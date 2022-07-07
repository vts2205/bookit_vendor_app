import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:bookit_vendor_app/view/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                width: 150,
                height: 150,
                child: Image.asset('assets/logo/v.png')),
            const Text(
              'REGISTER',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 3),
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'Enter your name',
                  labelText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'Enter your phone number',
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  labelText: 'Confirm Password',
                  hintText: 'Confirm your password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            _buildUpload('Aadhaar front'),
            _buildUpload('Aadhaar back'),
            _buildUpload('Pan'),
            _buildUpload('Passbook'),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: blue, minimumSize: const Size(120, 45)),
                onPressed: () {},
                child: const Text('REGISTER',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2)),
                TextButton(
                  style: TextButton.styleFrom(primary: blue),
                  onPressed: () {
                    Get.to(const LoginScreen());
                  },
                  child: const Text('Login',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2)),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

Widget _buildUpload(String filename) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          filename,
          style: const TextStyle(color: Colors.blueGrey, fontSize: 18),
        ),
        const Spacer(),
        Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.grey),
            child: const Icon(
              Icons.image,
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  height: Get.height * 0.1,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.camera,
                                size: 25,
                                color: Colors.teal,
                              ),
                              label: Text(
                                'Camera',
                                style: TextStyle(
                                    color: blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                          TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.image,
                                size: 25,
                                color: Colors.teal,
                              ),
                              label: Text(
                                'Gallery',
                                style: TextStyle(
                                    color: blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))
                        ]),
                  ),
                ));
              },
              child: const Text(
                'Upload',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
        )
      ],
    ),
  );
}
