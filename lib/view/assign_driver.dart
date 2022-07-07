import 'package:flutter/material.dart';

import 'widgets/appbar.dart';
import 'widgets/drawer.dart';

class AssignDriver extends StatelessWidget {
  const AssignDriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Assign Drivers'),
      body: Container(),        drawer: const CusDraw(),

    );
  }
}
//assign driver car no license no phonr nm req
