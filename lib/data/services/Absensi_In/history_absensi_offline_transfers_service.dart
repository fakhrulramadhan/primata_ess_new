import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:primata_ess_new/data/model/Absensi_In_Out/history_absensi_offline_transfers_model.dart';

import '../../../common/global_variables.dart';

class HistoryAbsensiOfflineTransferService {
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

  Future<Either<String, HistoryAbsensiOfflineTransferModel>> addHistory(
      HistoryAbsensiOfflineTransferModel model) async {
    //final token = await AuthLocalDatasource().getToken();
    final response = await http.post(
      Uri.parse('${GlobalVariables.baseUrl}/HistoryAbsensiOfflineTransfers'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(model.toJson()),
    );

    if (response.statusCode == 200) {
      return Right(
        HistoryAbsensiOfflineTransferModel.fromJson(
          jsonDecode(response.body),
        ),
      );
    } else {
      return const Left('API ERROR');
    }
  }
}
