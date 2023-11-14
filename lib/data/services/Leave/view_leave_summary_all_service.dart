import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:primata_ess_new/data/model/Leave/view_leave_summary_all_model.dart';

import '../../../common/global_variables.dart';
import 'package:http/http.dart' as http;

class ViewLeaveSummaryAllService {
  Future<Either<String, List<ViewLeaveSummaryAllModel>>>
      listLeaveSummary() async {
    // final tokenJwt = await AuthLocalDatasource().getToken();

    const noAbsen = NoAbsen;
    // print(model.toRawJson());

    final response = await http.get(
      Uri.parse(
          '${GlobalVariables.baseUrl}/View4_LeaveSummaryAll?id=201810001"'),
      headers: <String, String>{
        'Accept': 'application/json',
      },
      //body: model.toJson(),
    );

    if (response.statusCode == 200) {
      List<ViewLeaveSummaryAllModel> hasil;
      hasil = (json.decode(response.body) as List)
          .map((e) => ViewLeaveSummaryAllModel.fromJson(e))
          .toList();

      return Right(hasil);
      //return Right(GetHistoryAbsensiTransfersModel.fromRawJson(response.body));
    } else {
      return Left("${response.reasonPhrase}");
    }
  }
}
