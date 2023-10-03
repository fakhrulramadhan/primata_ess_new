import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:primata_ess_new/data/model/Leave/trans_leaves_model.dart';

import '../../../common/global_variables.dart';
import 'package:http/http.dart' as http;

class TransLeaveService {
  Future<Either<String, List<TransLeavesModel>>> getLeaveDetail(
      List<TransLeavesModel> model) async {
    // final tokenJwt = await AuthLocalDatasource().getToken();

    // print(model.toRawJson());

    final response = await http.get(
      Uri.parse(
          '${GlobalVariables.baseUrl}/TransLeaves?id=201810024&leave=AL"'),
      headers: <String, String>{
        'Accept': 'application/json',
      },
      //body: model.toJson(),
    );

    if (response.statusCode == 200) {
      List<TransLeavesModel> hasil;
      hasil = (json.decode(response.body) as List)
          .map((e) => TransLeavesModel.fromJson(e))
          .toList();

      return Right(hasil);
      //return Right(GetHistoryAbsensiTransfersModel.fromRawJson(response.body));
    } else {
      return Left("${response.reasonPhrase}");
    }
  }
}
