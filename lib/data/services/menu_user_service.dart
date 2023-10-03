import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:primata_ess_new/data/model/menu_users_model.dart';

import '../../../common/global_variables.dart';
import 'package:http/http.dart' as http;

const _baseUrl = GlobalVariables.baseUrl;

DateTime today = DateTime.now();

class MenuUserService {
  Future<Either<String, MenuUsersModel>> getHistoryAbsensiIn(
      MenuUsersModel model) async {
    // final tokenJwt = await AuthLocalDatasource().getToken();

    const noAbsen = NoAbsen;
    // print(model.toRawJson());

    final response = await http.post(
      Uri.parse('${GlobalVariables.baseUrl}/MenuUsers/hrm'),
      headers: <String, String>{
        'Accept': 'application/json',
      },
      //body: model.toJson(),
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return Right(MenuUsersModel.fromJson(json.decode(response.body)));
      //return Right(MenuUsersModel.fromRawJson(response.body));
    } else {
      return Left("${response.reasonPhrase}");
    }
  }
}
