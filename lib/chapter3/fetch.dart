import "package:http/http.dart" as http;

Future<http.Response> fetchData() {
  return http.get(Uri.parse("http://localhost:3000/"));
}

void main(List<String> args) {}
