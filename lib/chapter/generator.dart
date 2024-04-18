import 'dart:io';

generateList() {
  int c = int.parse(stdin.readLineSync() as String);
  var l = List.generate(c, (index) {
    if (index.isEven) return index + 7;
    if (index.isOdd) return index - 9;
  });
  print(l);

  var copy = List<int>.from(l);
  print(copy);

  var empty = List.empty();

  var filled = List.filled(c, 9);
  filled[0] = 6;
  print(filled);

  List.of(copy);
}
