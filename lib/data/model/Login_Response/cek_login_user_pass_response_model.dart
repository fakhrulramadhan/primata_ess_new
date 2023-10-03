import 'dart:convert';

class CekLoginUserPassResponseModel {
  final String? hasil;
  final dynamic hasil1;
  final dynamic hasilAbsenByEmp;
  final dynamic hasilUpdateAbsenByDate;
  final dynamic hasilUpdateAbsenByEmp;
  final dynamic hasilDemosi;
  final dynamic hasilPromosi;
  final dynamic hasilTransfer;

  CekLoginUserPassResponseModel({
    this.hasil,
    this.hasil1,
    this.hasilAbsenByEmp,
    this.hasilUpdateAbsenByDate,
    this.hasilUpdateAbsenByEmp,
    this.hasilDemosi,
    this.hasilPromosi,
    this.hasilTransfer,
  });

  CekLoginUserPassResponseModel copyWith({
    String? hasil,
    dynamic hasil1,
    dynamic hasilAbsenByEmp,
    dynamic hasilUpdateAbsenByDate,
    dynamic hasilUpdateAbsenByEmp,
    dynamic hasilDemosi,
    dynamic hasilPromosi,
    dynamic hasilTransfer,
  }) =>
      CekLoginUserPassResponseModel(
        hasil: hasil ?? this.hasil,
        hasil1: hasil1 ?? this.hasil1,
        hasilAbsenByEmp: hasilAbsenByEmp ?? this.hasilAbsenByEmp,
        hasilUpdateAbsenByDate:
            hasilUpdateAbsenByDate ?? this.hasilUpdateAbsenByDate,
        hasilUpdateAbsenByEmp:
            hasilUpdateAbsenByEmp ?? this.hasilUpdateAbsenByEmp,
        hasilDemosi: hasilDemosi ?? this.hasilDemosi,
        hasilPromosi: hasilPromosi ?? this.hasilPromosi,
        hasilTransfer: hasilTransfer ?? this.hasilTransfer,
      );

  factory CekLoginUserPassResponseModel.fromRawJson(String str) =>
      CekLoginUserPassResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CekLoginUserPassResponseModel.fromJson(Map<String, dynamic> json) =>
      CekLoginUserPassResponseModel(
        hasil: json["hasil"],
        hasil1: json["hasil1"],
        hasilAbsenByEmp: json["HasilAbsenByEmp"],
        hasilUpdateAbsenByDate: json["HasilUpdateAbsenByDate"],
        hasilUpdateAbsenByEmp: json["HasilUpdateAbsenByEmp"],
        hasilDemosi: json["hasilDemosi"],
        hasilPromosi: json["hasilPromosi"],
        hasilTransfer: json["hasilTransfer"],
      );

  Map<String, dynamic> toJson() => {
        "hasil": hasil,
        "hasil1": hasil1,
        "HasilAbsenByEmp": hasilAbsenByEmp,
        "HasilUpdateAbsenByDate": hasilUpdateAbsenByDate,
        "HasilUpdateAbsenByEmp": hasilUpdateAbsenByEmp,
        "hasilDemosi": hasilDemosi,
        "hasilPromosi": hasilPromosi,
        "hasilTransfer": hasilTransfer,
      };
}
