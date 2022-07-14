import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:bookit_vendor_app/widgets/appbar.dart';
import 'package:bookit_vendor_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class AddCars extends StatelessWidget {
  // AddCars({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String carmodel;

  late String regno;

  void validateAndSave() {
    final FormState? form = _formKey.currentState;
    if (form!.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(
          title: 'Add Cars',
        ),
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/car2.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      labelText: 'Car Registration Number',
                      hintText: 'Registration Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Registration Number';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      labelText: 'Car Model',
                      hintText: 'Model',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Password cannot be blank' : null,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get.back();
                    validateAndSave();
                  },
                  style: ElevatedButton.styleFrom(primary: green),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Submit"),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
