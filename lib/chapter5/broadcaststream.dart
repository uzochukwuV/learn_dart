import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  var xfile = File('loots.txt').readAsString().asStream();

  var fileBroadcast = xfile.asBroadcastStream();

  // var objbroadcast = fileBroadcast.where((event) => event.contains('{}'));

  fileBroadcast.listen((event) {
    print(jsonDecode(event)[0]);
  });

  fileBroadcast.listen((event) {
    print(event);
  });

  final list = [3, 2, 6, 3, 8, 4, 8, 4, 7];

  var f = list.reduce((value, element) {
    if (value > element) {
      return value;
    }
    return element;
  });

  print(f);
}
