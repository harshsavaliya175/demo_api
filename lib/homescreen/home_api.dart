import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:getapi/services/http.services.dart';
import 'package:http/http.dart' as http;

import '../model/data_model.dart';

class HomeApi {
  static Future getData() async {
    try {
      http.Response? response = await HttpServices.getApi(
          url: "https://api.alquran.cloud/v1/quran/ar.alafasy");
      if (response != null && response.statusCode == 200) {
        return Datamodel.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
