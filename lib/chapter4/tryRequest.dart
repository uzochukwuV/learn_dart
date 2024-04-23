import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List> getUsers() async {
  var uri = Uri.parse("http://localhost:3000/employees");
  // parse url
  var request = await http.get(uri);

  if (request.statusCode == 200) {
    var body = jsonDecode(request.body);
    return body;
  }
  return [];
}

void main(List<String> args) async {
  getUsers().then((value) => print(value));
}
