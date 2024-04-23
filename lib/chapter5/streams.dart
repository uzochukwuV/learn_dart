import 'dart:io';

void main(List<String> args) {
  // final stream =
  //     Stream<int>.periodic(const Duration(seconds: 1), (count) => count * count)
  //         .take(5);

  // stream.forEach(print);

  // Future<void> printThings(Stream<String> data) async {
  //   await for (var x in data) {
  //     print(x);
  //   }
  // }

  // printThings(Stream<String>.value('ok')); // prints "ok".

  // var file = File('quotes.txt').readAsString().asStream();

  // var file2 = File('quote.txt');

  // Stream<String> getVal() {
  //   return File('quotes.txt').readAsString().asStream();
  // }

  // Future<void> printIt(Stream<String> data) async {
  //   await for (var x in data) {
  //     print(x);
  //     file2.writeAsString(x);
  //   }
  // }

  // Future.microtask(() => printIt(getVal()));

  // Future<int> waitTask() async {
  //   await Future.delayed(const Duration(seconds: 2));
  //   return 10;
  // }

  // Future<String> doneTask() async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   return 'Future complete 1';
  // }

  // Future<String> doneTask3() async {
  //   await Future.delayed(const Duration(seconds: 5));
  //   return 'Future complete 2';
  // }

  // Future<String> doneTask4() async {
  //   await Future.delayed(const Duration(milliseconds: 200));
  //   return 'Future complete 3';
  // }

  // final stream = Stream<Object>.fromFutures(
  //     [doneTask(), waitTask(), doneTask3(), doneTask4()]);

  // stream.listen(print, onDone: () => print('Done'), onError: print);

  // final obj = Stream.fromIterable([1, 2, 3, 4, 5, 5]);
  // obj.listen((data) {
  //   print(data);
  // }, onDone: () => print('im done'));

  final period =
      Stream.periodic(const Duration(seconds: 1), (count) => count * count)
          .take(8);

  period.forEach(print);

  print('object');
}
