import 'package:bookit_vendor_app/constants/colors.dart';
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
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: ListView(
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
        cardtext(text: "Location"),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: Get.height * 0.3,
              width: Get.width,
              child: Image.asset(
                map,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        cardtext(
          text: "Invoice",
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
        cardtext(
          text: "Wallet",
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [Text("Total"), Spacer(), Text(wallettotal)],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [Text("Spent"), Spacer(), Text(walletspent)],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [Text("Balance"), Spacer(), Text(walletbalance)],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

class cardtext extends StatelessWidget {
  cardtext({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: blue),
      ),
    );
  }
}
