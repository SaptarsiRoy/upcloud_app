import 'package:flutter/material.dart';
import 'package:upcloud_app/screens/add_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddData(),
    );
  }
}
