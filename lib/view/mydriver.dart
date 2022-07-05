import 'package:flutter/material.dart';

import 'widgets/appbar.dart';

class Mydriver extends StatelessWidget {
  const Mydriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'My Drivers'),
      body: Container(),
    );
  }
}
