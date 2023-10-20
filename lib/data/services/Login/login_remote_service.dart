import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:primata_ess_new/data/model/Login_Request/login_request_model.dart';
import 'package:primata_ess_new/data/model/Login_Response/login_response_model.dart';

class LoginRemoteService {
  Future<Either<String, LoginResponseModel>> login(
      LoginRequestModel model) async {
    final response = await http.post(
      Uri.parse('https://reqres.in/api/login'),
      headers: <String, String>{
        //'Content-Type': ' text/plain; charset=utf-8',
      },
      body: model.toJson(),
    );

    var jsonResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return Right(LoginResponseModel.fromRawJson(response.body));
    } else {
      return const Left('server error');
    }
  }
}
