import 'dart:convert';
import 'dart:io';

void main() {
  int a;
  double b;
  String c;

  const y = 'v';
  final d = 5;

  print(y.runtimeType.toString());
  print(d.runtimeType.toString());

  print('Inputs :');
  stdout.write('Input variable a = ');
  a = int.parse(stdin.readLineSync() as String);

  print(a);

  stdout.write("Input variable b = ");
  b = double.parse(stdin.readLineSync() as String);

  stdout.write('Input variable c =');
  c = stdin.readLineSync() as String;
  // String interpolation

  print('The value of a is $a');
  print('The value of b is $b $a');
  print('The value of c is $c');

  const splitter = LineSplitter();
  const sampleText =
      'Dart is: \r an object-oriented \n class-based \n garbage-collected '
      '\r\n language with C-style syntax \r\n';

  final sampleTextLines = splitter.convert(sampleText);
  for (var i = 0; i < sampleTextLines.length; i++) {
    print('$i: ${sampleTextLines[i]}');
  }
}
