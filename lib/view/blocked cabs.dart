import 'package:flutter/material.dart';

import 'widgets/drawer.dart';
import 'widgets/appbar.dart';

class BlockedCabs extends StatelessWidget {
  const BlockedCabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Blocked Cabs',
      ),
      body: Container(),
      drawer: const CusDraw(),
    );
  }
}
