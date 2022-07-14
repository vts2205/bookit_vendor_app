import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:bookit_vendor_app/widgets/customtext.dart';
import 'package:bookit_vendor_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletHistoryScreen extends StatelessWidget {
  const WalletHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Wallet History'),
      drawer: const DrawerWidget(),
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
                      title: const Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: CustomText(
                          text: "TN05RE1234",
                        ),
                      ), 
                      subtitle: const CustomText(
                        text: "GPAY",
                        fontsize: 15,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: "\u{20B9}2656",
                            fontsize: 15,
                            FontWeight: FontWeight.w600,
                          ),
                          CustomText(
                            text: "14-07-2022",
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
