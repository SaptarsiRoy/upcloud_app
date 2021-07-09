import 'package:flutter/material.dart';
import 'package:upcloud_app/components/data_button.dart';
import 'package:upcloud_app/utilities/network.dart';
import 'package:upcloud_app/components/data_tile.dart';

class ShowData extends StatefulWidget {
  static const String id = 'ShowData';
  @override
  _ShowDataState createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  List<DataTile> dataTiles = [];

  void createTiles() async {
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

  @override
  void initState() {
    super.initState();
    createTiles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
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
                        // Navigator.pop(context);
                      },
                      backgroundColor: Color(0xFFFFC19E),
                    ),
                    DataButton(
                      textTitle: 'Show Data',
                      onPressed: () {
                        setState(() {
                          createTiles();
                        });
                      },
                      backgroundColor: Colors.grey.shade300,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: dataTiles,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
