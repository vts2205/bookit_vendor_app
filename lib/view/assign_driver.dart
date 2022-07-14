import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:bookit_vendor_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class AssignDriver extends StatelessWidget {
  const AssignDriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Assign Drivers'),
      body: Container(),
      drawer: const DrawerWidget(),
    );
  }
}
//assign driver car no license no phonr nm req
