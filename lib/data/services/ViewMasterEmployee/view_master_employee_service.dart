import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:primata_ess_new/data/model/ViewMasterEmployee/view_master_employee_list_model.dart';

import '../../../common/global_variables.dart';
import 'package:http/http.dart' as http;

const _baseUrl = GlobalVariables.baseUrl;

DateTime today = DateTime.now();

class ViewMasterEmployeeListService {
  Future<Either<String, ViewMasterEmployeeListModel>> getEmployeeList(
      ViewMasterEmployeeListModel model) async {
    // final tokenJwt = await AuthLocalDatasource().getToken();

    const noAbsen = NoAbsen;
    // print(model.toRawJson());

    final response = await http.post(
      Uri.parse(
          '${GlobalVariables.baseUrl}/ViewMasterEmployeeList/${GlobalVariables.Kodekar}'),
      headers: <String, String>{
        'Accept': 'application/json',
      },
      //body: model.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(
          ViewMasterEmployeeListModel.fromJson(json.decode(response.body)[0]));
      //return Right(ViewMasterEmployeeListModel.fromRawJson(response.body));
    } else {
      //return Left("${response.reasonPhrase}");
      return const Left("failed to load Employee");
    }
  }

  Future<Either<String, ViewMasterEmployeeListModel>>
      getEmployeeListNew() async {
    // final tokenJwt = await AuthLocalDatasource().getToken();

    const noAbsen = NoAbsen;
    // print(model.toRawJson());

    final response = await http.post(
      Uri.parse(
          '${GlobalVariables.baseUrl}/ViewMasterEmployeeList/${GlobalVariables.Kodekar}'),
      headers: <String, String>{
        'Accept': 'application/json',
      },
      //body: model.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(
          ViewMasterEmployeeListModel.fromJson(json.decode(response.body)[0]));
      //return Right(ViewMasterEmployeeListModel.fromRawJson(response.body));
    } else {
      //return Left("${response.reasonPhrase}");
      return const Left("failed to load Employee");
    }
  }
}
