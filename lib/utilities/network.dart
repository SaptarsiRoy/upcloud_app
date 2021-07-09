import 'dart:convert';
import 'package:http/http.dart' as http;

class Network {
  var _url = Uri.parse('https://dry-bayou-99944.herokuapp.com/profiles');

  Future getData() async {
    http.Response response = await http.get(_url);
    var data = response.body;
    var decodedData = jsonDecode(data);
    return decodedData;
  }
}
