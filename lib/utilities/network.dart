import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Network {
  var _url = Uri.parse('https://dry-bayou-99944.herokuapp.com/profiles');

  void getData() async {
    http.Response response = await http.get(_url);
    print(response);
  }
}
