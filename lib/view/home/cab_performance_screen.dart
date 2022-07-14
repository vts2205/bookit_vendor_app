import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CabPerformanceScreen extends StatefulWidget {
  const CabPerformanceScreen({Key? key}) : super(key: key);

  @override
  State<CabPerformanceScreen> createState() => _CabPerformanceScreenState();
}

class _CabPerformanceScreenState extends State<CabPerformanceScreen> {
  final startDate = TextEditingController();
  final endDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(title: 'Cab Performance'),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [buildDateSearch()],
            ),
          ),
        ));
  }

  buildDateSearch() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: startDate,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(15),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: green, width: 2)),
                hintText: 'From'),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101));
              if (pickedDate != null) {
                print(
                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                String formattedDate =
                    DateFormat('dd-MM-yyyy').format(pickedDate);
                print(
                    formattedDate); //formatted date output using intl package =>  2021-03-16
                //you can implement different kind of Date Format here according to your requirement

                setState(() {
                  startDate.text =
                      formattedDate; //set output date to TextField value.
                });
              } else {
                print("Date is not selected");
              }
            },
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: endDate,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(15),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: green, width: 2)),
                hintText: 'To'),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101));
              if (pickedDate != null) {
                print(
                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                String formattedDate =
                    DateFormat('dd-MM-yyyy').format(pickedDate);
                print(
                    formattedDate); //formatted date output using intl package =>  2021-03-16
                //you can implement different kind of Date Format here according to your requirement

                setState(() {
                  endDate.text =
                      formattedDate; //set output date to TextField value.
                });
              } else {
                print("Date is not selected");
              }
            },
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: green,
              size: 30,
            ))
      ],
    );
  }
}
