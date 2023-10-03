import 'dart:convert';

List<ViewLeaveSummaryAllModel> view4LeaveSummaryAllFromJson(String str) =>
    List<ViewLeaveSummaryAllModel>.from(
        json.decode(str).map((x) => ViewLeaveSummaryAllModel.fromJson(x)));

String view4LeaveSummaryAllToJson(List<ViewLeaveSummaryAllModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ViewLeaveSummaryAllModel {
  final String? pinId;
  final String? initialLeave;
  final String? description;
  final int? noUrut;
  final int? lyentitlement;
  final int? lytaken;
  final int? tyentitlement;
  final int? tytaken;
  final int? balance;
  final int? remaining;
  final String? namaKaryawan;
  final bool? entitlement;

  ViewLeaveSummaryAllModel({
    this.pinId,
    this.initialLeave,
    this.description,
    this.noUrut,
    this.lyentitlement,
    this.lytaken,
    this.tyentitlement,
    this.tytaken,
    this.balance,
    this.remaining,
    this.namaKaryawan,
    this.entitlement,
  });

  ViewLeaveSummaryAllModel copyWith({
    String? pinId,
    String? initialLeave,
    String? description,
    int? noUrut,
    int? lyentitlement,
    int? lytaken,
    int? tyentitlement,
    int? tytaken,
    int? balance,
    int? remaining,
    String? namaKaryawan,
    bool? entitlement,
  }) =>
      ViewLeaveSummaryAllModel(
        pinId: pinId ?? this.pinId,
        initialLeave: initialLeave ?? this.initialLeave,
        description: description ?? this.description,
        noUrut: noUrut ?? this.noUrut,
        lyentitlement: lyentitlement ?? this.lyentitlement,
        lytaken: lytaken ?? this.lytaken,
        tyentitlement: tyentitlement ?? this.tyentitlement,
        tytaken: tytaken ?? this.tytaken,
        balance: balance ?? this.balance,
        remaining: remaining ?? this.remaining,
        namaKaryawan: namaKaryawan ?? this.namaKaryawan,
        entitlement: entitlement ?? this.entitlement,
      );

  factory ViewLeaveSummaryAllModel.fromRawJson(String str) =>
      ViewLeaveSummaryAllModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewLeaveSummaryAllModel.fromJson(Map<String, dynamic> json) =>
      ViewLeaveSummaryAllModel(
        pinId: json["pinId"],
        initialLeave: json["initialLeave"],
        description: json["description"],
        noUrut: json["noUrut"],
        lyentitlement: json["lyentitlement"],
        lytaken: json["lytaken"],
        tyentitlement: json["tyentitlement"],
        tytaken: json["tytaken"],
        balance: json["balance"],
        remaining: json["remaining"],
        namaKaryawan: json["namaKaryawan"],
        entitlement: json["entitlement"],
      );

  Map<String, dynamic> toJson() => {
        "pinId": pinId,
        "initialLeave": initialLeave,
        "description": description,
        "noUrut": noUrut,
        "lyentitlement": lyentitlement,
        "lytaken": lytaken,
        "tyentitlement": tyentitlement,
        "tytaken": tytaken,
        "balance": balance,
        "remaining": remaining,
        "namaKaryawan": namaKaryawan,
        "entitlement": entitlement,
      };
}
