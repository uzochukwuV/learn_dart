import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:js';

void main() {
  print('Hello world!....');

  print(stream);
  print(x);
}

func() {
  print(stream);
  print(x);
}

const showLineNumbers = true;
var lineNumber = 1;
var stream = File('quotes.txt').openRead();
var writeStream = File('quotes.txt').openWrite();

var x = stream
    .transform(utf8.decoder)
    .transform(const LineSplitter())
    .forEach((line) {
  if (lineNumber % 2 == 0) {
    writeStream.writeln(line);
  }
  if (showLineNumbers) {
    stdout.write('${lineNumber++} ');
  }
  stdout.writeln(line);
});

Future<String> futureTask() async {
  await Future.delayed(const Duration(seconds: 5));
  return 'Future complete';
}

getStream() {
  final m = Stream<String>.fromFuture(futureTask());

  m.listen(print, onDone: () => print('Done'), onError: print);
}

// void Function()? functionName() {
//   return null;
// }



