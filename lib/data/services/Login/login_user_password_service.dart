import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:primata_ess_new/common/global_variables.dart';
import 'package:primata_ess_new/data/model/Login_Response/cek_login_user_pass_response_model.dart';
import 'package:http/http.dart' as http;

class LoginUserPasswordService {
  Future<Either<String, CekLoginUserPassResponseModel>> login(
      CekLoginUserPassResponseModel model) async {
    final response = await http.get(
      Uri.parse('${GlobalVariables.baseUrl}/CekLoginUsrPass'),
      headers: <String, String>{
        'Content-Type': ' text/plain; charset=utf-8',
      },
      //body: model.toJson(),
    );

    var jsonResponse = jsonDecode(response.body);

    if (response.statusCode == 200 && jsonResponse["hasil"] != "salah") {
      return Right(CekLoginUserPassResponseModel.fromRawJson(response.body));
    } else {
      return const Left('server error');
    }
  }
}
