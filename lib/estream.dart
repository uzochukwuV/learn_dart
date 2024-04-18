useStream() async {
  var stream = Stream.periodic(Duration(seconds: 1), (count) => count).take(10);
  var new_stream = Stopwatch()..start();
  print(new_stream.elapsedMicroseconds);
  
  // stream.listen((event) {
  //   print('$event is in use');
  // });

  var broadcastStream = stream.asBroadcastStream(onCancel: (subscription) {
    print('stream paused');
    subscription.pause();
  }, onListen: (controlller) async {
    if (controlller.isPaused) {
      print('stream d is resume');
      controlller.resume();
    }
  });

  final oddNumberStream = broadcastStream.where((event) => event.isOdd);
  final oddNumberListener = oddNumberStream.listen((event) {
    print('Even : $event');
    print(new_stream.elapsed);
  }, onDone: () => print('done'));
}


class Estream extends StateError {
    Estream(super.message) : super();
  }

