import 'dart:io';

void main(List<String> args) {
  var duration = const Duration(seconds: 5);
  print('Start sleeping');
  sleep(duration);
  print('5 seconds has passed');
}
