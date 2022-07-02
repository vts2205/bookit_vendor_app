import 'package:flutter/material.dart';

class BlockedCabs extends StatelessWidget {
  const BlockedCabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blocked Cabs'),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
