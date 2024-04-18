import 'dart:collection';
// import 'dart:js_util';

void main(List<String> args) {
  // A [Queue] is a collection that can be manipulated at both ends. One can iterate over the elements of a queue through [forEach] or with an [Iterator].
  final queue = Queue<int>(); // ListQueue() by default
  print(queue.runtimeType); // ListQueue

// Adding items to queue
  queue.addAll([1, 2, 3]);
  queue.addFirst(0);
  queue.addLast(10);
  print(queue); // {0, 1, 2, 3, 10}

// Removing items from queue
  queue.removeFirst();
  queue.removeLast();
  print(queue);

  final listQue = ListQueue<int>();
  listQue.add(5);
  listQue.addAll([3, 4, 5, 5]);
  listQue.addFirst(9);
  print(listQue);

  listQue.addLast(90);

  print(listQue.isEmpty);
  print(listQue.isNotEmpty);
  print(listQue.first);
  print(listQue.last);
}
