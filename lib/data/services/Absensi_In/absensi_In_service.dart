import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:primata_ess_new/data/model/Absensi_In_Out/get_history_absensi_offline_transfers_model.dart';

import '../../../common/global_variables.dart';
import 'package:http/http.dart' as http;

const _baseUrl = GlobalVariables.baseUrl;

DateTime today = DateTime.now();

class AbsensiInService {
  Future<Either<String, List<GetHistoryAbsensiTransfersModel>>>
      getHistoryAbsensiIn(List<GetHistoryAbsensiTransfersModel> model) async {
    // final tokenJwt = await AuthLocalDatasource().getToken();

    const noAbsen = NoAbsen;
    // print(model.toRawJson());

    final response = await http.post(
      Uri.parse(
          '${GlobalVariables.baseUrl}/HistoryAbsensiOfflineTransfers/$noAbsen'),
      headers: <String, String>{
        'Accept': 'application/json',
      },
      //body: model.toJson(),
    );

    if (response.statusCode == 200) {
      List<GetHistoryAbsensiTransfersModel> hasil;
      hasil = (json.decode(response.body) as List)
          .map((e) => GetHistoryAbsensiTransfersModel.fromJson(e))
          .toList();

      return Right(hasil);
      //return Right(GetHistoryAbsensiTransfersModel.fromRawJson(response.body));
    } else {
      return Left("${response.reasonPhrase}");
    }
  }
}
