import 'package:flutter/material.dart';
import 'package:upcloud_app/screens/add_screen.dart';
import 'package:upcloud_app/screens/show_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AddData.id,
      routes: {
        AddData.id: (context) => AddData(),
        ShowData.id: (context) => ShowData(),
      },
    );
  }
}
