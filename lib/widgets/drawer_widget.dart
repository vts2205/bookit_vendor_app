import 'package:bookit_vendor_app/view/assign_driver.dart';
import 'package:bookit_vendor_app/view/authentication/login_screen.dart';
import 'package:bookit_vendor_app/view/home/home_view.dart';
import 'package:bookit_vendor_app/view/my_earings_screen.dart';
import 'package:bookit_vendor_app/view/mycars.dart';
import 'package:bookit_vendor_app/view/mydriver.dart';
import 'package:bookit_vendor_app/view/profile_screen.dart';
import 'package:bookit_vendor_app/view/wallet_history_screen.dart';
import 'package:bookit_vendor_app/view/support_screen.dart';
import 'package:bookit_vendor_app/view/wallet_screen.dart';
import 'package:bookit_vendor_app/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.80,
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 20,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Get.to(const ProfileScreen());
                  },
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Nivy",
                            // "${getProfileModel?.body?.getprofiledetails?[0].name}",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "6382136965",
                            // "${getProfileModel?.body?.getprofiledetails?[0].contact}",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                MenuItems(
                    title: 'Dashboard',
                    icon: Icons.analytics_outlined,
                    onTap: () {
                      Get.to(const HomeView());
                    },
                    color: Colors.black,
                    size: 18),
                MenuItems(
                    title: 'My Cars',
                    icon: Icons.drive_eta_outlined,
                    onTap: () {
                      Get.to(const MyCars());
                    },
                    color: Colors.black,
                    size: 18),
                MenuItems(
                    title: 'My Drivers',
                    icon: Icons.people,
                    onTap: () {
                      Get.to(const Mydriver());
                    },
                    color: Colors.black,
                    size: 18),
                MenuItems(
                    title: 'Assign Driver',
                    icon: Icons.directions_car_outlined,
                    onTap: () {
                      Get.to( AssignDriver());
                    },
                    color: Colors.black,
                    size: 18),
                MenuItems(
                    title: 'Wallet',
                    icon: Icons.account_balance_wallet_outlined,
                    onTap: () {
                      Get.to( WalletScreen());
                    },
                    color: Colors.black,
                    size: 18),
                MenuItems(
                    title: 'My Earnings',
                    icon: Icons.monetization_on,
                    onTap: () {
                      Get.to(const MyEarningsScreen());
                    },
                    color: Colors.black,
                    size: 18),
                MenuItems(
                    title: 'Wallet History',
                    icon: Icons.account_balance_wallet_sharp,
                    onTap: () {
                      Get.to(const WalletHistoryScreen());
                    },
                    color: Colors.black,
                    size: 18),
                MenuItems(
                    title: 'Support',
                    icon: Icons.support,
                    onTap: () {
                      Get.to(const SupportScreen());
                    },
                    color: Colors.black,
                    size: 18),
                MenuItems(
                    title: 'Logout',
                    icon: Icons.logout,
                    onTap: () {
                      Get.offAll(LoginScreen());
                    },
                    color: Colors.black,
                    size: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
