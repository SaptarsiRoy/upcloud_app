import 'package:flutter/material.dart';
import 'package:upcloud_app/components/data_button.dart';
import 'package:upcloud_app/components/data_tile.dart';

// ignore: must_be_immutable
class ShowData extends StatefulWidget {
  static const String id = 'ShowData';
  List<DataTile> dataTiles;
  ShowData({this.dataTiles = const []});
  @override
  _ShowDataState createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DataButton(
                    textTitle: 'Add Data',
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
                height: 20.0,
              ),
              Column(
                children: widget.dataTiles,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
