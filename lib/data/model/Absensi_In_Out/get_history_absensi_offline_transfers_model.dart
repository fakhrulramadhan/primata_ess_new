import 'dart:convert';

List<GetHistoryAbsensiTransfersModel> GetHistoryAbsensiOfflineTransferFromJson(
        String str) =>
    List<GetHistoryAbsensiTransfersModel>.from(json
        .decode(str)
        .map((x) => GetHistoryAbsensiTransfersModel.fromJson(x)));

String GetHistoryAbsensiOfflineTransferToJson(
        List<GetHistoryAbsensiTransfersModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetHistoryAbsensiTransfersModel {
  final int? no;
  final dynamic autoNo;
  final dynamic terminalId;
  final String? pinid;
  final dynamic tanggal;
  final dynamic verifyResult;
  final dynamic functionKey;
  final dynamic recover;
  final String? sumber;
  final dynamic bundleNo;
  final String? mesinId;
  final dynamic latitude;
  final dynamic longitude;

  GetHistoryAbsensiTransfersModel({
    this.no,
    this.autoNo,
    this.terminalId,
    this.pinid,
    this.tanggal,
    this.verifyResult,
    this.functionKey,
    this.recover,
    this.sumber,
    this.bundleNo,
    this.mesinId,
    this.latitude,
    this.longitude,
  });

  GetHistoryAbsensiTransfersModel copyWith({
    int? no,
    dynamic autoNo,
    dynamic terminalId,
    String? pinid,
    dynamic tanggal,
    dynamic verifyResult,
    dynamic functionKey,
    dynamic recover,
    String? sumber,
    dynamic bundleNo,
    String? mesinId,
    dynamic latitude,
    dynamic longitude,
  }) =>
      GetHistoryAbsensiTransfersModel(
        no: no ?? this.no,
        autoNo: autoNo ?? this.autoNo,
        terminalId: terminalId ?? this.terminalId,
        pinid: pinid ?? this.pinid,
        tanggal: tanggal ?? this.tanggal,
        verifyResult: verifyResult ?? this.verifyResult,
        functionKey: functionKey ?? this.functionKey,
        recover: recover ?? this.recover,
        sumber: sumber ?? this.sumber,
        bundleNo: bundleNo ?? this.bundleNo,
        mesinId: mesinId ?? this.mesinId,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );

  factory GetHistoryAbsensiTransfersModel.fromRawJson(String str) =>
      GetHistoryAbsensiTransfersModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetHistoryAbsensiTransfersModel.fromJson(Map<String, dynamic> json) =>
      GetHistoryAbsensiTransfersModel(
        no: json["no"],
        autoNo: json["autoNo"],
        terminalId: json["terminalId"],
        pinid: json["pinid"],
        tanggal: json["tanggal"],
        verifyResult: json["verifyResult"],
        functionKey: json["functionKey"],
        recover: json["recover"],
        sumber: json["sumber"],
        bundleNo: json["bundleNo"],
        mesinId: json["mesinId"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "no": no,
        "autoNo": autoNo,
        "terminalId": terminalId,
        "pinid": pinid,
        "tanggal": tanggal,
        "verifyResult": verifyResult,
        "functionKey": functionKey,
        "recover": recover,
        "sumber": sumber,
        "bundleNo": bundleNo,
        "mesinId": mesinId,
        "latitude": latitude,
        "longitude": longitude,
      };
}
