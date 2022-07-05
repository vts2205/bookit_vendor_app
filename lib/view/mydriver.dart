import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/appbar.dart';

class Mydriver extends StatelessWidget {
  const Mydriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(
          title: 'My Drivers',
        ),
        body: Container(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(
              addDrivers(),
            );
          },
          child: const Icon(
            Icons.add,
          ),
        ));
  }
}

Widget addDrivers() {
  return const Scaffold(
    appBar: CustomAppbar(
      title: 'Add Cars',
    ),
  );
}
