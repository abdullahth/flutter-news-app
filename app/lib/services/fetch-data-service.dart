import 'dart:convert';
import 'package:app/snippets.dart';
import 'package:http/http.dart' as http;

class FetchData {
  static bool isFetched;

  // For Sports Category

  // bool var for each category status code
  static bool sportsStatus, entertainmentStatus, bussinessStatus, scienceStatus;

  static Future<List> init(String category, String country) async {
    var response = await http.get(apiLink(category, country: country));
    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);
      return decoded["articles"];
    } else
      return null;
  }
}
