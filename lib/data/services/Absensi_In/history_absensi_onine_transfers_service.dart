import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../common/global_variables.dart';

class APIServiceAbsen {
  Future<dynamic> post(String api, dynamic object) async {
    var url = Uri.parse(GlobalVariables.baseUrl + api);
    var payload = json.encode(object);

    var headers = {"Content-Type": "application/json"};

    var response = await http.post(url, body: payload, headers: headers);

    if (response.statusCode == 201) {
      return response.body;
    } else {
      return Exception(response.reasonPhrase);
    }
  }
}
