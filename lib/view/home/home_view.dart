// ignore_for_file: avoid_unnecessary_containers

import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Vendor'),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _infoCard(2, Icons.location_on, 'Active Cabs'),
                  _infoCard(2, Icons.car_repair, 'InActive Cabs'),
                  _infoCard(3, Icons.block, 'Blocked Cabs'),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                            Divider(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
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
                                    children: [
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
                                    children: [
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
                            Divider(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
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
                    Text(
                      "Cab Performance",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
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
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                                rides: 8))),
              ),
            ],
          ),
        ));
  }
}

Widget _infoCard(int no, IconData iconData, String text) {
  return Card(
    child: Container(
      width: Get.width * 0.27,
      height: Get.height * 0.09,
      child: Column(children: [
        Divider(
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
                  style: TextStyle(
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
              SizedBox(
                height: 15,
              ),
              Text(cabno),
              SizedBox(
                height: 20,
              ),
              Text(
                "\u{20B9}$amount",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    rating,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text("Rides:$rides")
                ],
              )
            ],
          ),
        )),
  );
}
