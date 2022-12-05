import 'dart:convert';

import '../model/park.dart';

class NetworkRequest {
  static const String url =
      'https://60142474b538980017568c8e.mockapi.io/parkingDetails';

  static List<Park> parsePark(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Park> parks = list.map((model) => Park.fromJson(model));
    return parks;
  }
}
