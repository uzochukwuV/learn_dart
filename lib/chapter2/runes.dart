import 'dart:convert';
import 'dart:math' as math;

import 'package:dart/request.dart';

void goldRunes() {
  var g = Runes('g');
  print(g.runtimeType.toString());

  var acs = AsciiEncoder();
  var k = acs.convert('string');
  print(k.runtimeType.toString());

  calculate(num_of_aph: 7, num_of_words: 9, k: 8);

  print('-----------------');

  Function h = () => calculate(); // aroow function
  h();
}

calculate({int num_of_aph = 0, int num_of_words = 0, int? k}) {
  //optional params
  //default params
  var alphabets = 'abcdefghijklmnopqrstuvwxyz';
  var num = math.Random().nextInt(alphabets.length);
  print(num);

  for (var i = 0; i < num + 1; i++) {
    print(i);
    List nums = [];
    nums.add(i);
  }
}
