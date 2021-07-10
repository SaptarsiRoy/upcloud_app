import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:upcloud_app/components/data_button.dart';
import 'package:upcloud_app/components/data_tile.dart';
import 'package:upcloud_app/constants.dart';
import 'package:upcloud_app/screens/show_screen.dart';
import 'package:upcloud_app/utilities/network.dart';

// ignore: must_be_immutable
class AddData extends StatefulWidget {
  static const String id = 'AddData';

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  List<DataTile> dataTiles = [];
  bool isShowing = false;
  final _formKey = GlobalKey<FormState>();

  Future<void> createTiles() async {
    var data = await Network().getData();
    for (var item in data) {
      if (item['name'] != null &&
          item['contact'] != null &&
          item['email'] != null &&
          item['address'] != null) {
        var tile = DataTile(
            name: item['name'],
            email: item['email'],
            contact: item['contact'],
            address: item['address']);
        dataTiles.add(tile);
      }
    }
  }

  String? validateEmail(value) {
    bool emailValidate = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value.toString());
    return (emailValidate ? null : 'Enter a correct email');
  }

  String? validateContact(value) {
    bool contactValidate = value.toString().length == 10;
    return (contactValidate ? null : 'Enter a 10 digit phone number');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingOverlay(
        progressIndicator: CircularProgressIndicator(
          color: Colors.grey.shade600,
        ),
        color: Colors.grey.shade400,
        isLoading: isShowing,
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: Form(
                  key: _formKey,
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
                            onPressed: () async {
                              setState(() {
                                isShowing = true;
                              });
                              await createTiles();
                              setState(() {
                                isShowing = false;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShowData(
                                    dataTiles: dataTiles,
                                  ),
                                ),
                              );
                            },
                            backgroundColor: Colors.grey.shade300,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
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
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
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
                                validator: validateEmail,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
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
                                validator: validateContact,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
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
                        onPressed: () => _formKey.currentState!.validate()
                            ? showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  content: Text('data saved successfully'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text(
                                        'ok',
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  content: Text(
                                    'There are some errors!',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text('ok'),
                                    ),
                                  ],
                                ),
                              ),
                        child: Padding(
                            padding: EdgeInsets.symmetric(
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
            ),
          ],
        ),
      ),
    );
  }
}
