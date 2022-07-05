import 'package:bookit_vendor_app/view/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCars extends StatelessWidget {
  const MyCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(title: 'My Cars'),
        body: Container(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(addCars());
          },
          child: const Icon(
            Icons.add,
          ),
        ));
  }
}

Widget addCars() {
  return const Scaffold(
    appBar: CustomAppbar(
      title: 'Add Cars',
    ),
  );
}
