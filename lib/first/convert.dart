import 'dart:convert' as convert;

void main(List<String> args) {
  var c = '[{"age": 7}]';
  var d = {};
  var e = '''
jhsbcjshbjahbsjhbdjashbjhdas \n
sdjhavsjhvdjahvsdhvashvdhasd \n
sadghvashgdvjasvdhavshdvah \n
''';
  // LineSplitter
  // jsonEncode
  //jsonDecode

  var codec = convert.jsonDecode(
    c,
    reviver: (key, value) => print('$key + $value'),
  );
  print(codec);
  var coded = convert.jsonEncode(d);
  print(coded);

  var splitter = convert.LineSplitter();
  var codee = splitter.convert(e).toList();
  print(codee);

  var y = convert.utf8.encode(e);
  print(y);
}
