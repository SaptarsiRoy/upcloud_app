import 'package:flutter/material.dart';
import 'package:upcloud_app/components/data_button.dart';

class ShowData extends StatefulWidget {
  static const String id = 'ShowData';
  @override
  _ShowDataState createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 60.0,
            ),
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
                  onPressed: () {
                    Navigator.pushNamed(context, ShowData.id);
                  },
                  backgroundColor: Colors.grey.shade300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
