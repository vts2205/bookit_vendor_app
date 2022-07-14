import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:bookit_vendor_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyEarningsScreen extends StatelessWidget {
  const MyEarningsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'My Earnings'),
      drawer: const DrawerWidget(),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: Get.height,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Card(
                    child: ListTile(
                      title: Text("TN78B6757"),
                      subtitle: Text("5FQCWFX740WC"),
                      trailing: Text(
                        "\u{20B9}2656",
                      ),
                    ),
                  ),
                );
              },
              itemCount: 20,
            ),
          ),
        )
      ]),
    );
  }
}
