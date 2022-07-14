import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:bookit_vendor_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';

class WalletScreen extends StatelessWidget {
  WalletScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final amount = TextEditingController();
  final vehicleNumber = TextEditingController();
  var vechileNumber = [
    "TN56A6513",
    "TN12A3453",
    "TN56A6343",
    "TN16A2333",
    "TN26A6563",
    "TN54A9893",
    "TN32Z6803",
    "TN89A6513",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Wallet'),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
            child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TypeAheadFormField(
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: vehicleNumber,
                        decoration: InputDecoration(
                          hintText: 'Select your vehicle',
                          contentPadding: const EdgeInsets.all(10),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: green, width: 2)),
                        )),
                    suggestionsCallback: (pattern) {
                      return vechileNumber.where((item) =>
                          item.toLowerCase().contains(pattern.toLowerCase()));
                    },
                    onSuggestionSelected: (String val) {
                      this.vehicleNumber.text = val;
                      print(val);
                    },
                    itemBuilder: (_, String item) {
                      return ListTile(
                        title: Text(item),
                      );
                    },
                    getImmediateSuggestions: true,
                    hideSuggestionsOnKeyboardHide: false,
                    hideOnEmpty: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Select Vehicle Number';
                      }
                      return null;
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: amount,
                  decoration: InputDecoration(
                    hintText: 'Enter Amount',
                    contentPadding: const EdgeInsets.all(10),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green, width: 2)),
                  ),
                  validator: (value) {
                    if (value!.length < 2) {
                      return 'enter above 100';
                    }
                  },
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      //ippo pay
                      print("Success");
                    } else {
                      print('enter required fields');
                    }
                  },
                  style: ElevatedButton.styleFrom(primary: green),
                  child: Text(
                    "Recharge",
                    textScaleFactor: Get.textScaleFactor,
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
