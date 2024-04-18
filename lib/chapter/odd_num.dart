import 'dart:io';

oddNumber() {
  print('Input a list of numbers seperated by comma');
  stdout.write('your list: ');

  String nums = stdin.readLineSync() as String;
  List num_list = nums.split(',');
  print(num_list);

  int counter = 0;

  num_list.forEach((element) {
    int n = int.parse(element);
    n.isOdd == true ? counter++ : null;
  });

  var h = num_list.where(
    (element) {
      int n = int.parse(element);
      return n.isOdd == true;
    },
  );

  print(h.length);

  // for (var num in num_list) {
  //   int n = int.parse(num);
  //   if (n.isOdd) {
  //     counter++;
  //     print(n);
  //     print(n.runtimeType.toString()); // to check variable type
  //   }
  // }

  print('the number is $counter ');
}
