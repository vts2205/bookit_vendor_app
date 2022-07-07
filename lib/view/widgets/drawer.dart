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
      width: Get.width * 0.9,
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(
              8.0,
            ),
            child: DrawerHeader(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/driver.png',
                ),
                radius: 50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              12.0,
            ),
            child: ListTile(
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
          ),
          const Divider(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(
              12.0,
            ),
            child: ListTile(
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
          ),
          const Divider(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(
              12.0,
            ),
            child: ListTile(
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
          ),
          const Divider(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListTile(
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
          ),
          const Divider(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(
              12.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.monetization_on,
              ),
              title: Text(
                'My Earnings',
              ),
            ),
          ),
          const Divider(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(
              12.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.report,
              ),
              title: Text(
                'Reports',
              ),
            ),
          ),
          const Divider(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(
              12.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.support,
              ),
              title: Text(
                'Support',
              ),
            ),
          ),
          const Divider(
            height: 10,
          )
        ],
      ),
    );
  }
}
