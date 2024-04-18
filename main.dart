main() {
  // A standard for loop
  for (var i = 0; i < 3; i++) {
    print(i);
  }

  // 'for-in' can be used on any class that implements Iterable
  var collection = [3, 4, 5];
  for (var x in collection) {
    print(x);
  }

  // Closures will capture the value of the index (Dart is lexically scoped)
  var callbacks = [];
  for (var i = 6; i < 8; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c()); // invoke each callback

  onReady.then((value) {
    print(value);
  });
}

Future get onReady {
  var dur = new Duration(seconds: 1);
  var onSecond = new Future.delayed(dur);
  Map k = {'user': ""};
  for (var i in k.keys) {
    print(i);
  }

  var user = User('jegs', 'begs');
  user.getV();

  return onSecond.then((_) {
    return 'loaded';
  });
}

class User {
  final v;
  final k;
  User(this.v, this.k);

  getV() => print(v);
}
