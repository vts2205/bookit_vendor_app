import 'package:bookit_vendor_app/view/add_cars.dart';
import 'package:bookit_vendor_app/view/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/drawer.dart';

class MyCars extends StatelessWidget {
  const MyCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'My Cars'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ListTile(
                            leading: Text("Car Registration Number:"),
                            trailing: Text(
                              " TN22C1221",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          ListTile(
                            leading: Text('Model:'),
                            trailing: Text(
                              'Dezire',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
      drawer: const CusDraw(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to( AddCars());
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
