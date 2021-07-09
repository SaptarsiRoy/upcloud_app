import 'package:flutter/material.dart';
import 'package:upcloud_app/components/data_button.dart';

class AddData extends StatelessWidget {
  static const String id = 'AddData';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DataButton(
                    textTitle: 'Add Data',
                    onPressed: () {},
                    backgroundColor: Color(0xFFFFC19E),
                  ),
                  DataButton(
                    textTitle: 'Show Data',
                    onPressed: () {},
                    backgroundColor: Colors.grey.shade300,
                  ),
                ],
              ),
              SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name:",
                    //labelStyle: TextStyle()
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "E-mail:",
                    //labelStyle: TextStyle()
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Contact:",
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Address:",
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              DataButton(
                textTitle: 'Save',
                onPressed: () {},
                backgroundColor: Color(0xFFFFC19E),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
