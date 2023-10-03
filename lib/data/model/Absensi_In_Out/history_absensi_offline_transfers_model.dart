import 'dart:convert';

List<HistoryAbsensiTransfersModel> historyAbsensiOfflineTransferFromJson(
        String str) =>
    List<HistoryAbsensiTransfersModel>.from(
        json.decode(str).map((x) => HistoryAbsensiTransfersModel.fromJson(x)));

String historyAbsensiOfflineTransferToJson(
        List<HistoryAbsensiTransfersModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HistoryAbsensiTransfersModel {
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

  HistoryAbsensiTransfersModel({
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

  HistoryAbsensiTransfersModel copyWith({
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
      HistoryAbsensiTransfersModel(
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

  factory HistoryAbsensiTransfersModel.fromRawJson(String str) =>
      HistoryAbsensiTransfersModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HistoryAbsensiTransfersModel.fromJson(Map<String, dynamic> json) =>
      HistoryAbsensiTransfersModel(
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
