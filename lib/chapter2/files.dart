import 'dart:io';

getFile() {
  var tick = File('teak.json').readAsStringSync();

  print(tick.runtimeType.toString());

  File('teak.json').writeAsStringSync('contents');
}
