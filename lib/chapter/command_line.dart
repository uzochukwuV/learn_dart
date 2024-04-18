import 'dart:io';

import 'package:dart/chapter4/obj.dart';

commandLine() {
  // Standard output / input DART I/O
  print('Teds Calculator');
  stdout.writeln('what is your first number (x):  ');
  int x = int.parse(stdin.readLineSync() as String);

  // type cast
  // conversion from string to int and vice versa

  stdout.write('what is your first number (y): ');
  int y = int.parse(stdin.readLineSync() as String);

  print(x + y);

  // req list of numbers from users
  // print num of all odd numbers
  Workers b = Workers(v: 'v');
  b.getSalary;
  b.updateSalary = '';
}
