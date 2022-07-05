import 'package:flutter/material.dart';

import 'widgets/appbar.dart';

class AddDrivers extends StatelessWidget {
  const AddDrivers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Add Driver',
      ),
    );
  }
}
