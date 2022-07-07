import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/appbar.dart';

class ActiveCabs extends StatelessWidget {
  const ActiveCabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Active Cabs'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: Get.height,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => _carCard(
                      carNo: 'TN38AS1111',
                      model: 'Alto',
                      status: 'on-Ride',
                      photo: 'driver.png',
                      pickuplocation: 'gandipuram',
                      droplocation: 'navaindia',
                      tariff: '200',
                      licenseno: 'TNXHJD15105406',
                      drivername: 'Raja',
                      rating: '4.5',
                    )),
          ),
        ),
      ),
    );
  }
}

Widget _carCard({
  required String carNo,
  required String model,
  required String status,
  required String photo,
  required String pickuplocation,
  required String droplocation,
  required String drivername,
  required String licenseno,
  required String tariff,
  required String rating,
}) {
  return Card(
    child: SizedBox(
      height: Get.height * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/$photo',
              ),
            ),
            title: Text(drivername),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [const SizedBox(
                height: 7,
              ),
                Text(
                  licenseno,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  carNo,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  model,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  status,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  pickuplocation,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  droplocation,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  tariff,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(
                      rating,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: const [
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "Driver Name:",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "License No:",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "Car No:",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "Model: ",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "Status:",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "Pickup:",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "Drop:",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "Tariff:",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "Rating:",
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          //         ),
          //       ],
          //     ),
          //
          //   ],
          // ),
        ],
      ),
    ),
  );
}
