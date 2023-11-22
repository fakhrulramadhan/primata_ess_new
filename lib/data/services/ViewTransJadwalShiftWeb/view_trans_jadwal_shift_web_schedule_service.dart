import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:primata_ess_new/data/model/VIewTrans/view_trans_jadwal_shift_web_model.dart';

import '../../../common/global_variables.dart';
import 'package:http/http.dart' as http;

const _baseUrl = GlobalVariables.baseUrl;

DateTime today = DateTime.now();

class ViewTransJadwalShiftWebScheduleService {
  Future<Either<String, List<ViewTransJadwalShiftWebModel>>>
      getListSchedule() async {
    // final tokenJwt = await AuthLocalDatasource().getToken();

    const noAbsen = NoAbsen;
    // print(model.toRawJson());

    //viewTransJadwalShiftWeb?id=201810003&Tglawal=2022-01-05&tglakhir=2022-01-11
    final response = await http.get(
      Uri.parse(
          '${GlobalVariables.baseUrl}/ViewTransJadwalShiftWeb?Tglawal=2021-10-22&tglakhir=2022-10-23'),
      headers: <String, String>{
        'Accept': 'application/json',
      },
      //body: model.toJson(),
    );

    //print(response.body);

    if (response.statusCode == 200) {
      List<ViewTransJadwalShiftWebModel> hasil;
      hasil = (json.decode(response.body) as List)
          .map((e) => ViewTransJadwalShiftWebModel.fromJson(e))
          .toList();

      print("ini hasil");
      print(hasil);

      return Right(hasil);
      //return Right(ViewMasterEmployeeListModel.fromRawJson(response.body));
    } else {
      //return Left("${response.reasonPhrase}");
      return Left("${response.reasonPhrase}");
    }
  }
}
