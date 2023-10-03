import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:primata_ess_new/data/model/MasterEmployee/master_employee_model.dart';

import '../../../common/global_variables.dart';
import 'package:http/http.dart' as http;

class MasterEmployeeService {
  Future<Either<String, List<MasterEmployeeModel>>> getEmployee(
      List<MasterEmployeeModel> model) async {
    // final tokenJwt = await AuthLocalDatasource().getToken();

    const noAbsen = NoAbsen;
    // print(model.toRawJson());

    final response = await http.get(
      Uri.parse(
          '${GlobalVariables.baseUrl}/MasterKaryawans/${GlobalVariables.Kodekar}'),
      headers: <String, String>{
        'Accept': 'application/json',
        "Access-Control-Allow-Origin": "*"
      },
      //body: model.toJson(),
    );

    if (response.statusCode == 200) {
      List<MasterEmployeeModel> hasil;
      hasil = (json.decode(response.body) as List)
          .map((e) => MasterEmployeeModel.fromJson(e))
          .toList();

      return Right(hasil);
      //return Right(GetHistoryAbsensiTransfersModel.fromRawJson(response.body));
    } else {
      return Left("${response.reasonPhrase}");
    }
  }
}
