import 'dart:convert';
import 'package:api_flutter/models/main_result.dart';
import 'package:http/http.dart' as http;

class SliderContent {
  static Future<List<MainResult>> getResult() async {
    List<MainResult>? result;
    String link = "https://api.metaflix.az/api/filter/slidercontents/AZ";
    var res = await http.get(Uri.parse(link));
    result = <MainResult>[];
    if (json.decode(res.body)['result'] != null) {
      json.decode(res.body)['result'].forEach((v) {
        result!.add(MainResult.fromJson(v));
      });
    }
    return result;
  }
}
