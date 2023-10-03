import 'dart:convert';

class CekLoginUserResponseModel {
  final String? hasil;
  final dynamic hasil1;
  final dynamic hasilAbsenByEmp;
  final dynamic hasilUpdateAbsenByDate;
  final dynamic hasilUpdateAbsenByEmp;
  final dynamic hasilDemosi;
  final dynamic hasilPromosi;
  final dynamic hasilTransfer;

  CekLoginUserResponseModel({
    this.hasil,
    this.hasil1,
    this.hasilAbsenByEmp,
    this.hasilUpdateAbsenByDate,
    this.hasilUpdateAbsenByEmp,
    this.hasilDemosi,
    this.hasilPromosi,
    this.hasilTransfer,
  });

  CekLoginUserResponseModel copyWith({
    String? hasil,
    dynamic hasil1,
    dynamic hasilAbsenByEmp,
    dynamic hasilUpdateAbsenByDate,
    dynamic hasilUpdateAbsenByEmp,
    dynamic hasilDemosi,
    dynamic hasilPromosi,
    dynamic hasilTransfer,
  }) =>
      CekLoginUserResponseModel(
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

  factory CekLoginUserResponseModel.fromRawJson(String str) =>
      CekLoginUserResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CekLoginUserResponseModel.fromJson(Map<String, dynamic> json) =>
      CekLoginUserResponseModel(
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
