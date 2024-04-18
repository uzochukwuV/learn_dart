import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  var new_file = File('quotes.txt').openRead();

  var new_broadcast = new_file.asBroadcastStream();
  new_broadcast.take(4).listen((event) {
    print(event);
  });

  var jsonFile = File('teak.json').readAsStringSync().toLowerCase();
  print(jsonFile);

  var decodedFile = jsonDecode(jsonFile);
  print(decodedFile.runtimeType.toString());

  var jsonFile2 = File('teak.json').writeAsString(jsonFile);
  jsonFile2.whenComplete(() => print('completed'));
}
