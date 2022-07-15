import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:bookit_vendor_app/view/add_cars.dart';
import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:bookit_vendor_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCars extends StatelessWidget {
  const MyCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'My Cars'),
      drawer: const DrawerWidget(),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: green,
        onPressed: () {
          Get.to(AddCars());
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
