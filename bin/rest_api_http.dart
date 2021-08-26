import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  var url =
      Uri.https('api.bravo68web.me','/');
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        (response.body);
    print('Got: $jsonResponse.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}