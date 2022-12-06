import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/park.dart';

class NetworkRequest {
  static const String url =
      'https://60142474b538980017568c8e.mockapi.io/parkingDetails';

  static List<Park> parsePark(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Park> parks = list.map((model) => Park.fromJson(model)).toList();
    return parks;
  }

  static Future<List<Park>> fetchParks() async {
    final response = await http.get(Uri.parse(url));
    debugPrint('${response.statusCode}');

    if (response.statusCode == 200) {
      debugPrint('${response.body}');
      return compute(parsePark, response.body);
    } else if (response.statusCode == 404) {
      throw Exception('not found');
    } else {
      throw Exception('can get ppark');
    }
  }
}
