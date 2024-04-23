import 'dart:io';

void main(List<String> args) {
  var file = File('quotes.txt').readAsStringSync();

  var file2 = File('quote.txt');

  printIt(String data) {
    print(data);
    file2.writeAsString(data);
  }

  printIt(file);
}


// look for big data ;
