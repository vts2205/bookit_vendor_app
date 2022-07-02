import 'package:bookit_vendor_app/view/active_cabs.dart';
import 'package:bookit_vendor_app/view/blocked%20cabs.dart';
import 'package:bookit_vendor_app/view/inactive_cabs.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Vendor'),
          backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          width: Get.width * 0.6,
          child: ListView(children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: DrawerHeader(
                  child: CircleAvatar(
                backgroundImage: AssetImage('assets/driver.png'),
                radius: 50,
              )),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: ListTile(
                leading: Icon(Icons.drive_eta_rounded),
                title: Text('My Cars'),
              ),
            ),
            Divider(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: ListTile(
                leading: Icon(
                  Icons.people,
                ),
                title: Text('My Drivers'),
              ),
            ),
            Divider(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('My Earnings'),
              ),
            ),
            Divider(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: ListTile(
                leading: Icon(Icons.report),
                title: Text('Reports'),
              ),
            ),
            Divider(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: ListTile(
                leading: Icon(Icons.support),
                title: Text('Support'),
              ),
            ),
            Divider(
              height: 10,
            )
          ]),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _infoCard(
                        iconData: Icons.location_on,
                        no: 2,
                        ontap: () {
                          Get.to(const ActiveCabs());
                        },
                        text: 'Active Cabs'),
                    _infoCard(
                        iconData: Icons.car_repair,
                        no: 2,
                        ontap: () {
                          Get.to(const InactiveCabs());
                        },
                        text: 'InActive Cabs'),
                    _infoCard(
                        iconData: Icons.block,
                        no: 3,
                        ontap: () {
                          Get.to(const BlockedCabs());
                        },
                        text: 'Blocked Cabs'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: SizedBox(
                        height: Get.height * 0.27,
                        width: Get.width,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Collection",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "\u{20B9} 61.08",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "01 Jul 2022",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  Text(
                                    "Net Earning \u{20B9} 54.06",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ],
                              ),
                              const Divider(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: const [
                                        Text(
                                          "\u{20B9} 61.08",
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Cash",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.grey,
                                    width: 1,
                                    height: 40,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: const [
                                        Text(
                                          "\u{20B9} 61.08",
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Digital Payments",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.grey,
                                    width: 1,
                                    height: 40,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: const [
                                        Text(
                                          "\u{20B9} 61.08",
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Discount",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Net Earnings",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Icon(Icons.keyboard_arrow_right)
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Cab Performance",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View All",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "01 Jul 2022  -  10 Jul 2022",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ]),
                ),
                SizedBox(
                  height: 150,
                  child: Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) =>
                          _cabcard(
                              cabno: "TN38AS1111",
                              amount: "11806.83 ",
                              rating: "4.5",
                              rides: 8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Driver Performance",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View All",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "01 Jul 2022  -  10 Jul 2022",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ]),
                ),
                SizedBox(
                  height: 150,
                  child: Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) =>
                          _drivercard(
                              drivername: 'Raja',
                              earning: '11806',
                              photo: 'driver.png',
                              rating: '4.5',
                              rides: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget _infoCard(
    {required int no,
    required IconData iconData,
    required String text,
    required VoidCallback ontap}) {
  return InkWell(
    onTap: ontap,
    child: Card(
      child: SizedBox(
        width: Get.width * 0.27,
        height: Get.height * 0.09,
        child: Column(children: [
          const Divider(
            height: 5,
            color: Colors.teal,
            thickness: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    no.toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Icon(
                  iconData,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Text(text)
        ]),
      ),
    ),
  );
}

Widget _cabcard(
    {required String cabno,
    required String amount,
    required String rating,
    required int rides}) {
  return Card(
    child: SizedBox(
        width: Get.width * 0.46,
        height: Get.height * 0.15,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(cabno),
              const SizedBox(
                height: 20,
              ),
              Text(
                "\u{20B9}$amount",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    rating,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text("Rides:$rides")
                ],
              )
            ],
          ),
        )),
  );
}

Widget _drivercard(
    {required String drivername,
    required String earning,
    required String photo,
    required String rating,
    required int rides}) {
  return Card(
    child: SizedBox(
        width: Get.width * 0.46,
        height: Get.height * 0.15,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset('assets/$photo'),
                  ),
                  Column(
                    children: [
                      Text(drivername),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "\u{20B9}$earning",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    rating,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text("Rides:$rides")
                ],
              )
            ],
          ),
        )),
  );
}
