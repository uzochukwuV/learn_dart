import 'dart:async';
import 'dart:io';

void main() async {
  Future.delayed(Duration(milliseconds: 3000));
  print(6);

  await Future.delayed(Duration(milliseconds: 3000));
  print('waited');

  var c = await Future.wait([delayedNumber(), delayedString()]);
  print(c);

  var d = Future.doWhile(() {
    return false;
  });

  var e = Future.microtask(() => delayedNumber());
  e.then((value) => print(value));
}

Future<String> delayedNumber() async {
  var loot = File('loots.txt').readAsString();
  return loot;
}

Future<String> delayedString() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'result';
}
