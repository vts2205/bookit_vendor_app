import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActiveCabs extends StatelessWidget {
  const ActiveCabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Active Cabs'),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PageView.builder(
            itemBuilder: (context, index) {
              return _activeCard(
                  photo: "assets/driver.png",
                  name: 'Raju',
                  phoneno: "9997788445",
                  licenseno: "TND122318SD",
                  status: "IDLE",
                  map: "assets/map.png",
                  basefare: "220",
                  addcharge: "100",
                  confee: "125",
                  gst: "120",
                  total: "500",
                  wallettotal: "1200",
                  walletspent: "250",
                  walletbalance: "950");
            },
            itemCount: 10,
          )),
    );
  }
}

Widget _activeCard({
  required String photo,
  required String name,
  required String phoneno,
  required String licenseno,
  required String status,
  required String map,
  required String basefare,
  required String addcharge,
  required String confee,
  required String gst,
  required String total,
  required String wallettotal,
  required String walletspent,
  required String walletbalance,
}) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(photo),
                ),
                title: Text(name),
                subtitle: Text(phoneno),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      licenseno,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      status,
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Image.asset(
                    map,
                    fit: BoxFit.cover,
                  ),
                  height: Get.height * 0.3,
                  width: Get.width,
                ),
              ),
            ),
            Card(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [Text("BaseFare"), Spacer(), Text(basefare)],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Additional charges"),
                      Spacer(),
                      Text(addcharge)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [Text("Convenience fee"), Spacer(), Text(confee)],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [Text("GST"), Spacer(), Text(gst)],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [Text("Total"), Spacer(), Text(total)],
                  ),
                ),
              ]),
            )),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Wallet Balance"),
                          Spacer(),
                          Text(walletbalance)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Wallet Spent"),
                          Spacer(),
                          Text(walletspent)
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Wallet Total"),
                          Spacer(),
                          Text(wallettotal)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
    // height: Get.height,
    // child: Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Card(
    //       child: ListTile(
    //     //     leading: CircleAvatar(
        //       radius: 50,
        //       backgroundImage: AssetImage(
        //         'assets/$photo',
        //       ),
        //     ),
        //     title: Text(drivername),
        //     subtitle: Text(),
        //   ),
        // ),
        // ListTile(
        //   // leading:
        //   // title: ,
        //   subtitle: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const SizedBox(
        //         height: 7,
        //       ),
        //       Text(
        //         licenseno,
        //         style:
        //             const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        //       ),
        //       const SizedBox(
        //         height: 7,
        //       ),
        //       Text(
        //         carNo,
        //         style:
        //             const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        //       ),
        //       const SizedBox(
        //         height: 6,
        //       ),
        //       Text(
        //         model,
        //         style:
        //             const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        //       ),
        //       const SizedBox(
        //         height: 6,
        //       ),
        //       Text(
        //         status,
        //         style:
        //             const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        //       ),
        //       const SizedBox(
        //         height: 6,
        //       ),
        //       Text(
        //         pickuplocation,
        //         style:
        //             const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        //       ),
        //       const SizedBox(
        //         height: 6,
        //       ),
        //       Text(
        //         droplocation,
        //         style:
        //             const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        //       ),
        //       const SizedBox(
        //         height: 6,
        //       ),
        //       Text(
        //         tariff,
        //         style:
        //             const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        //       ),
        //       const SizedBox(
        //         height: 6,
        //       ),
        //       Row(
        //         children: [
        //           const Icon(
        //             Icons.star,
        //             color: Colors.amber,
        //           ),
        //           Text(
        //             rating,
        //             style: const TextStyle(fontWeight: FontWeight.bold),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
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
//       ],
//     ),
//   );
// }
