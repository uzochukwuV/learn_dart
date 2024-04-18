import 'dart:async';

void main() {
  new Stream.fromIterable([1, 2, 3]).listen((event) {
    print('s1: $event');
  });

  new Stream.periodic(new Duration(milliseconds: 300)).take(3).listen((_) {
    print('s2: tick!');
  });

  new Stream.fromIterable([1, 2, 5]).map((i) => i * 2).listen((event) {
    print('s3: $event');
  });

  var sc = new StreamController.broadcast();
  var broadcastStream = sc.stream;

  broadcastStream.listen((event) {
    print('s4: $event! hi');
  });
  broadcastStream.listen((event) {
    print('s5: $event! hello');
  });

  sc.add(1);
  sc.add(2);
}
