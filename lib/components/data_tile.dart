import 'package:flutter/material.dart';

class DataTile extends StatelessWidget {
  final String name, email, contact, adress;

  DataTile({
    required this.name,
    required this.email,
    required this.contact,
    required this.adress,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Name'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Email'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Contact'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Address'),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        color: Colors.grey,
      ),
    );
  }
}
