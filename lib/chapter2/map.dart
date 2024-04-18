library mapLibrary;

hashRat() {
  var users = {}; // map literals
  var admins = Map(); // map constructor;

  users['john'] = 'Seline';

  admins['kate'] = 'Peter';

  // add items to map

  print(users['john']);
  print(admins['kate']);
  // accessing

  //keys and values / length

  print(users.length);

  print(admins.keys);

  print(users.values);

  // add to map

  users.addAll(admins);
  print(users);

  users.remove('john');
  print(users);

  users.clear();
  print(users);

  //conditions

  var kateAdmin = admins.containsKey('kate');
  print(kateAdmin);
}

nap() {}

cat() {}

class Taken {}
