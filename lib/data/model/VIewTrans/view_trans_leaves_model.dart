import 'dart:convert';

class ViewTransLeavesModel {
  final int? autoNo;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? pinId;
  final String? keterangan;
  final String? leave;
  final int? entitlement;
  final int? taken;
  final int? remaining;
  final int? forfeited;
  final DateTime? tglLastUpdate;
  final String? optr;
  final String? reff;
  final String? jabatan;
  final String? departemen;
  final DateTime? dateJoin;
  final String? firstName;
  final String? kodeDepartemen;
  final String? kodeStatusKaryawan;
  final String? namaKaryawan;
  final String? initialLeave;

  ViewTransLeavesModel({
    this.autoNo,
    this.startDate,
    this.endDate,
    this.pinId,
    this.keterangan,
    this.leave,
    this.entitlement,
    this.taken,
    this.remaining,
    this.forfeited,
    this.tglLastUpdate,
    this.optr,
    this.reff,
    this.jabatan,
    this.departemen,
    this.dateJoin,
    this.firstName,
    this.kodeDepartemen,
    this.kodeStatusKaryawan,
    this.namaKaryawan,
    this.initialLeave,
  });

  ViewTransLeavesModel copyWith({
    int? autoNo,
    DateTime? startDate,
    DateTime? endDate,
    String? pinId,
    dynamic leaveNo,
    bool? status,
    String? keterangan,
    String? leave,
    int? entitlement,
    int? taken,
    int? remaining,
    int? forfeited,
    DateTime? tglLastUpdate,
    String? optr,
    String? reff,
    dynamic reffNo,
    dynamic takenDate,
    dynamic unTaken,
    String? jabatan,
    String? departemen,
    DateTime? dateJoin,
    String? firstName,
    String? kodeDepartemen,
    String? kodeStatusKaryawan,
    String? namaKaryawan,
    String? initialLeave,
  }) =>
      ViewTransLeavesModel(
        autoNo: autoNo ?? this.autoNo,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        pinId: pinId ?? this.pinId,
        keterangan: keterangan ?? this.keterangan,
        leave: leave ?? this.leave,
        entitlement: entitlement ?? this.entitlement,
        taken: taken ?? this.taken,
        remaining: remaining ?? this.remaining,
        forfeited: forfeited ?? this.forfeited,
        tglLastUpdate: tglLastUpdate ?? this.tglLastUpdate,
        optr: optr ?? this.optr,
        reff: reff ?? this.reff,
        jabatan: jabatan ?? this.jabatan,
        departemen: departemen ?? this.departemen,
        dateJoin: dateJoin ?? this.dateJoin,
        firstName: firstName ?? this.firstName,
        kodeDepartemen: kodeDepartemen ?? this.kodeDepartemen,
        kodeStatusKaryawan: kodeStatusKaryawan ?? this.kodeStatusKaryawan,
        namaKaryawan: namaKaryawan ?? this.namaKaryawan,
        initialLeave: initialLeave ?? this.initialLeave,
      );

  factory ViewTransLeavesModel.fromRawJson(String str) =>
      ViewTransLeavesModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewTransLeavesModel.fromJson(Map<String, dynamic> json) =>
      ViewTransLeavesModel(
        autoNo: json["autoNo"],
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        pinId: json["pinId"],
        keterangan: json["keterangan"],
        leave: json["leave"],
        entitlement: json["entitlement"],
        taken: json["taken"],
        remaining: json["remaining"],
        forfeited: json["forfeited"],
        tglLastUpdate: json["tglLastUpdate"] == null
            ? null
            : DateTime.parse(json["tglLastUpdate"]),
        optr: json["optr"],
        reff: json["reff"],
        jabatan: json["jabatan"],
        departemen: json["departemen"],
        dateJoin:
            json["dateJoin"] == null ? null : DateTime.parse(json["dateJoin"]),
        firstName: json["firstName"],
        kodeDepartemen: json["kodeDepartemen"],
        kodeStatusKaryawan: json["kodeStatusKaryawan"],
        namaKaryawan: json["namaKaryawan"],
        initialLeave: json["initialLeave"],
      );

  Map<String, dynamic> toJson() => {
        "autoNo": autoNo,
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "pinId": pinId,
        "keterangan": keterangan,
        "leave": leave,
        "entitlement": entitlement,
        "taken": taken,
        "remaining": remaining,
        "forfeited": forfeited,
        "tglLastUpdate": tglLastUpdate?.toIso8601String(),
        "optr": optr,
        "reff": reff,
        "jabatan": jabatan,
        "departemen": departemen,
        "dateJoin": dateJoin?.toIso8601String(),
        "firstName": firstName,
        "kodeDepartemen": kodeDepartemen,
        "kodeStatusKaryawan": kodeStatusKaryawan,
        "namaKaryawan": namaKaryawan,
        "initialLeave": initialLeave,
      };
}
