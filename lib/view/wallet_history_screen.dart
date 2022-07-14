import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:bookit_vendor_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletHistoryScreen extends StatelessWidget {
  const WalletHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Wallet History'),
      drawer: DrawerWidget(),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: Get.height,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Card(
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          "TN05RE1234",
                          textScaleFactor: Get.textScaleFactor,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Image.asset(
                            'assets/gpay.png',
                            width: Get.width * 0.1,
                          ),
                          Text(
                            "GPAY",
                            textScaleFactor: Get.textScaleFactor,
                          )
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\u{20B9}2656",
                            textScaleFactor: Get.textScaleFactor,
                          ),
                          Text(
                            "14-07-2022",
                            textScaleFactor: Get.textScaleFactor,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 15,
            ),
          ),
        )
      ]),
    );
  }
}
