import 'package:bookit_vendor_app/view/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../assign_driver.dart';
import '../mycars.dart';
import '../mydriver.dart';

class CusDraw extends StatelessWidget {
  const CusDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: Get.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/driver.png',
                ),
                radius: 30,
              ),
              title: Text("RajaRaja"),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text(
                'Home',
              ),
              onTap: () {
                Get.to(
                  const HomeView(),
                );
              },
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: const Icon(
                Icons.drive_eta_rounded,
              ),
              title: const Text(
                'My Cars',
              ),
              onTap: () {
                Get.to(
                  const MyCars(),
                );
              },
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: const Icon(
                Icons.people,
              ),
              title: const Text(
                'My Drivers',
              ),
              onTap: () {
                Get.to(
                  const Mydriver(),
                );
              },
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: const Icon(
                Icons.directions_car_outlined,
              ),
              title: const Text(
                'Assign Driver',
              ),
              onTap: () {
                Get.to(
                  const AssignDriver(),
                );
              },
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.monetization_on,
              ),
              title: Text(
                'My Earnings',
              ),
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.report,
              ),
              title: Text(
                'Reports',
              ),
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.support,
              ),
              title: Text(
                'Support',
              ),
            ),
            const Divider(
              height: 2,
            )
          ],
        ),
      ),
    );
  }
}
