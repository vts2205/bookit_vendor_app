import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:bookit_vendor_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mydriver extends StatelessWidget {
  const Mydriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'My Drivers',
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/driver.png'),
                        ),
                        title: Text(
                          "RAJU",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        subtitle: Text(
                          "9999451231",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        trailing: Text('TN8846841WE546'),
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
    );
  }
}
