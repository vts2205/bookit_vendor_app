import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:bookit_vendor_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class MyEarningsScreen extends StatelessWidget {
  const MyEarningsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'My Earnings'),
      drawer: const DrawerWidget(),
    );
  }
}
