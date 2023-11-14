import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:primata_ess_new/data/model/Absensi_In_Out/get_history_absensi_offline_transfers_model.dart';

import '../../../common/global_variables.dart';
import 'package:http/http.dart' as http;

const _baseUrl = GlobalVariables.baseUrl;

DateTime today = DateTime.now();

class AbsensiInService {
  //string (hasil output untuk left)
  //list<>

  Future<Either<String, List<GetHistoryAbsensiTransfersModel>>>
      getHistoryAbsensiIn() async {
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

  Future<List<GetHistoryAbsensiTransfersModel>> gotHistoryAbsensiIn() async {
    const no = NoAbsen;
    String apiUrl =
        "${GlobalVariables.baseUrl}/HistoryAbsensiOfflineTransfers/$no";

    var apiResult = await http
        .get(Uri.parse(apiUrl), headers: {"Accept": "application/json"});

    if (apiResult.statusCode == 200) {
      List<GetHistoryAbsensiTransfersModel> hasil;
      hasil = (json.decode(apiResult.body) as List)
          .map((e) => GetHistoryAbsensiTransfersModel.fromJson(e))
          .toList();
      return hasil;
    } else {
      throw Exception(apiResult.reasonPhrase);
    }
  }

  // Future<Either<String, List<GetHistoryAbsensiTransfersModel>>>
  //     getHistoryAbsensiIn(List<GetHistoryAbsensiTransfersModel> model) async {
  //   // final tokenJwt = await AuthLocalDatasource().getToken();

  //   const noAbsen = NoAbsen;
  //   // print(model.toRawJson());

  //   final response = await http.post(
  //     Uri.parse(
  //         '${GlobalVariables.baseUrl}/HistoryAbsensiOfflineTransfers/$noAbsen'),
  //     headers: <String, String>{
  //       'Accept': 'application/json',
  //     },
  //     //body: model.toJson(),
  //   );

  //   if (response.statusCode == 200) {
  //     List<GetHistoryAbsensiTransfersModel> hasil;
  //     hasil = (json.decode(response.body) as List)
  //         .map((e) => GetHistoryAbsensiTransfersModel.fromJson(e))
  //         .toList();

  //     return Right(hasil);
  //     //return Right(GetHistoryAbsensiTransfersModel.fromRawJson(response.body));
  //   } else {
  //     return Left("${response.reasonPhrase}");
  //   }
  // }
}
