import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:bookit_vendor_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class InactiveCabs extends StatelessWidget {
  const InactiveCabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Inactive Cabs'),
      drawer: const DrawerWidget(),
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
                    location: 'Sai baba colony',
                    status: 'booked',
                    photo: 'car.jpg',
                    pickuplocation: 'gandipuram',
                    droplocation: 'navaindia',
                    tariff: '200')),
          ),
        ),
      ),
    );
  }
}

Widget _carCard({
  required String carNo,
  required String model,
  required String location,
  required String status,
  required String photo,
  required String pickuplocation,
  required String droplocation,
  required String tariff,
}) {
  return Card(
    child: SizedBox(
      height: Get.height * 0.32,
      width: Get.width * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/$photo',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Car No:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Model: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Location:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Status:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Pickup:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Drop:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Tariff:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      carNo,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      model,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      location,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      status,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      pickuplocation,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      droplocation,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      tariff,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
