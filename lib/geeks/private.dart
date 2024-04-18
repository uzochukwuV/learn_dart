import 'dart:async';

void main(List<String> args) {
  print(GetPoint.counter);
}

class Coords {
  var _x;
  var _y;

  Coords({int x = 0, int y = 0})
      : _x = x,
        _y = y;
  //initializer list
}

class Text {
  final String content;
  const Text({this.content = ''});
}

// Use the final keyword to make a field of a class immutable.
// Use a constant constructor to make all objects of a class constant at compile time.

//STATIC fields

class GetPoint {
  int x;
  int y;
  static int _counter = 0;

  GetPoint(this.x, this.y) {
    _counter++;
  }

  static int get counter => _counter;
}
