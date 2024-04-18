import 'dart:collection';

// convert a list of items(String ) to map with items as the key and index as value
// encode it

// print all items in the list that contains a user input;
// print "i love {items} and {last item}" in the simplest way possible;
getQueue() {
  var lst = Queue<int>();

  print(lst);

  lst.add(9);
  lst.addAll([8, 4, 5, 3, 3]);
  lst.addFirst(8);
  print(lst);

  var f = Set();
  f.addAll([8, 4, 5, 3, 3]);

  print(f);
}
