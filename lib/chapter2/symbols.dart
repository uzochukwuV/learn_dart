import 'dart:mirrors';
import 'package:dart/chapter2/map.dart';

getSymbol() {}

trySymbols() {
  var getSymbol = #mapLibrary;
  Symbol taken = Symbol('Taken');

  print(getSymbol);

  MirrorSystem system = currentMirrorSystem();
  LibraryMirror library = system.findLibrary(getSymbol);

  print(library.declarations);

  ClassMirror takenClass = library.declarations[taken] as ClassMirror;

  print(takenClass);

  print(takenClass.instanceMembers);
}
