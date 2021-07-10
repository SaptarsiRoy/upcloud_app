import 'package:flutter/material.dart';
import 'package:upcloud_app/constants.dart';

class DataTile extends StatelessWidget {
  final String name, email, contact, address;

  DataTile({
    required this.name,
    required this.email,
    required this.contact,
    required this.address,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 40.0,
      ),
      child: Container(
        height: 300,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
              ),
              child: Text(
                name,
                style: kDataTileTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
              ),
              child: Text(
                email,
                style: kDataTileTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
              ),
              child: Text(
                contact,
                style: kDataTileTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
              ),
              child: Text(
                address,
                style: kDataTileTextStyle,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}
