import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/park.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';
class NetworkRequest {
  static const String url =
      'https://60142474b538980017568c8e.mockapi.io/parkingDetails';

  static List<Park> parsePark(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Park> parks = list.map((model) => Park.fromJson(model)).toList();
    return parks;
  }

   static Future<List<Park>> fetchParks({int page = 1}) async{
    final response=await http.get(Uri.parse(url));
    log('aa:$compute(parsePark,response.body)');
    debugPrint('movieTitle');
    if(response.statusCode==200){
      return compute(parsePark,response.body);
    }else if(response.statusCode==404){
      throw Exception('not found');
    }else{
      throw Exception('can get ppark');
    }
   }
   
}
