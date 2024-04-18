import 'dart:convert';
import 'dart:io';
import 'dart:async';

void main(List<String> args) async {
  //Generate
  var generateList = List.generate(5, (index) => 'number $index');
  print(generateList);

  //Filled
  var filledList = List.filled(5, [9]);
  print(filledList);
  // has all elemnts with same values
  filledList[3].add(800);
  print(filledList[1]);

  //List From
  var copy_list = List.from(generateList);
  print(copy_list);

  // List of
  List.of(filledList, growable: true);
  example();
}

example() async {
  String x = '';
  dynamic decoded;
  var file = File('loots.txt').openRead();

  var modified = file.transform(utf8.decoder);

  var c = modified.listen((event) {
    x += event;
  });

  c.onData((data) {
    decoded = jsonDecode(data);
    for (var x in decoded) {
      print(x['name']);
    }
  });
}
