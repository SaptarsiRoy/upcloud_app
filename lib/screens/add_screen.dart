import 'package:flutter/material.dart';
import 'package:upcloud_app/components/data_button.dart';
import 'package:upcloud_app/constants.dart';

class AddData extends StatelessWidget {
  static const String id = 'AddData';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
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
                    child: Row(
                      children: [
                        Text(
                          'Name: ',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Expanded(
                          child: TextFormField(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Row(
                      children: [
                        Text(
                          'E-mail: ',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Row(
                      children: [
                        Text(
                          'Contact: ',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Row(
                      children: [
                        Text(
                          'Address: ',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.streetAddress,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFFFC19E),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {},
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50.0,
                          vertical: 10.0,
                        ),
                        child: Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
