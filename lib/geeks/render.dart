render() {
//   It can be used to refer to the instance variable of the current class
// It can be used to make or Initiate current class constructor
// It can be passed as an argument in the method call
// It can be passed as an argument in the constructor call
// It can be used to make a current class method
// It can be used to return the current class Instance

  var p1 = Point()
    ..x = 10
    ..y = 20;
  // cascade notation

  p1.move(3, 4).show().reset();
  print(p1 is Point);
  //method chaining

//   Point(int x, int y) {
//   this.x = x;
//   this.y = y;
// }
// longer constrcutor call

  // Point(this.x, this.y); shorter

  var student = Student(9);
  print(student);
}

class Student {
  var score;
  String geekName = '';

  // Creating the getter method
  // to get input from Field/Property
  String get getName {
    return geekName;
  }

  // Creating the setter method
  // to set the input in Field/Property
  set setName(String name) {
    geekName = name;
  }

  Student(var lot) {
    this.score = lot;
    print('Stdnet is been initialised');
  }
}

class Point {
  int x = 0;
  int y = 0;

  Point({this.x = 0, this.y = 0});
  // default parameters

  Point move(int x, int y) {
    this.x = x;
    this.y = y;
    return this;
  }

  Point reset() {
    this.x = 0;
    this.y = 0;
    return this;
  }

  Point.origin() : this(x: 0, y: 0);
  //forwarding contracuctor

  Point show() {
    print('${this.x}, ${this.y}');
    return this;
  }
}
