import 'dart:convert';

reak() {
  var k = {
    'users': [
      {"user": "Emeka"},
      {"user": "Emeka"},
      {"user": "Emeka"}
    ]
  };
  print(k.runtimeType.toString());

  var encoded = jsonEncode(k);

  print(encoded.runtimeType.toString());

  var decoded = jsonDecode(encoded);
  print(decoded.runtimeType.toString());
}
