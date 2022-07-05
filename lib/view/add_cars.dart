import 'package:flutter/material.dart';

import 'widgets/appbar.dart';

class AddCars extends StatelessWidget {
  const AddCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Add Cars',
      ),
    );
  }
}
