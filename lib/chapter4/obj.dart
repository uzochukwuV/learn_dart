library workers;

class Workers {
  String _salary = '';
  final String v;
  final String? b;
  final int c;
  final d;
  static int s = 0;

  multipy() {
    print(c * 8);
  }

  Workers({this.b, this.c = 0, required this.v})
      : d = c * 2; // initializer list

  Workers.staytic({this.b, this.c = 0, this.d, this.v = ''});
  // optional
  // required parameters

  // named and positional arguments

  // default values

  //Named Constructors
  // Workers.withArg(this.v);

  // static variables

  get getSalary {
    return _salary;
  }

  set updateSalary(String g) {
    _salary = g;
  }
}

// creating instance
// Workers hard = Workers.withArg('vernice');
Workers easy = Workers(b: '', c: 2, v: '');

main() {
  print(easy._salary);
  print(Workers.s);
}

// inheritance
class Teachers extends Workers {
  Teachers({super.b, super.c, super.v = ''});

  // overriding
  @override
  multipy() {
    // TODO: implement multipy
    print(super.c * 9);
    super.multipy();
  }

// abstract class
}

class Person {
  void getName() {}
  var v;
  var g;
}

// interfaces are like prototype
class Indian implements Person {
  void getName() {}
  var v = 0;
  var g = 9;
  var i = 0;
  final u;
  final o;
  List<int> j = [2];
  Indian({this.u, this.o});

  factory Indian.toMap(dynamic json) {
    return Indian(u: json.u, o: json.o);
  }
}
