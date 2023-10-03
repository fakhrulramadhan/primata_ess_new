import 'dart:convert';

List<TransLeavesModel> transLeavesFromJson(String str) =>
    List<TransLeavesModel>.from(
        json.decode(str).map((x) => TransLeavesModel.fromJson(x)));

String transLeavesToJson(List<TransLeavesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TransLeavesModel {
  final int? autoNo;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? pinId;
  final dynamic leaveNo;
  final bool? status;
  final String? keterangan;
  final String? leave;
  final int? entitlement;
  final int? taken;
  final int? remaining;
  final int? forfeited;
  final DateTime? tglLastUpdate;
  final String? optr;
  final String? reff;
  final dynamic reffNo;
  final dynamic takenDate;
  final dynamic unTaken;
  final String? jabatan;
  final String? departemen;
  final DateTime? dateJoin;
  final String? firstName;
  final bool? cuti;
  final String? kodeDepartemen;
  final String? kodeStatusKaryawan;
  final String? namaKaryawan;
  final bool? entitlementStatus;
  final String? initialLeave;

  TransLeavesModel({
    this.autoNo,
    this.startDate,
    this.endDate,
    this.pinId,
    this.leaveNo,
    this.status,
    this.keterangan,
    this.leave,
    this.entitlement,
    this.taken,
    this.remaining,
    this.forfeited,
    this.tglLastUpdate,
    this.optr,
    this.reff,
    this.reffNo,
    this.takenDate,
    this.unTaken,
    this.jabatan,
    this.departemen,
    this.dateJoin,
    this.firstName,
    this.cuti,
    this.kodeDepartemen,
    this.kodeStatusKaryawan,
    this.namaKaryawan,
    this.entitlementStatus,
    this.initialLeave,
  });

  TransLeavesModel copyWith({
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
    bool? cuti,
    String? kodeDepartemen,
    String? kodeStatusKaryawan,
    String? namaKaryawan,
    bool? entitlementStatus,
    String? initialLeave,
  }) =>
      TransLeavesModel(
        autoNo: autoNo ?? this.autoNo,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        pinId: pinId ?? this.pinId,
        leaveNo: leaveNo ?? this.leaveNo,
        status: status ?? this.status,
        keterangan: keterangan ?? this.keterangan,
        leave: leave ?? this.leave,
        entitlement: entitlement ?? this.entitlement,
        taken: taken ?? this.taken,
        remaining: remaining ?? this.remaining,
        forfeited: forfeited ?? this.forfeited,
        tglLastUpdate: tglLastUpdate ?? this.tglLastUpdate,
        optr: optr ?? this.optr,
        reff: reff ?? this.reff,
        reffNo: reffNo ?? this.reffNo,
        takenDate: takenDate ?? this.takenDate,
        unTaken: unTaken ?? this.unTaken,
        jabatan: jabatan ?? this.jabatan,
        departemen: departemen ?? this.departemen,
        dateJoin: dateJoin ?? this.dateJoin,
        firstName: firstName ?? this.firstName,
        cuti: cuti ?? this.cuti,
        kodeDepartemen: kodeDepartemen ?? this.kodeDepartemen,
        kodeStatusKaryawan: kodeStatusKaryawan ?? this.kodeStatusKaryawan,
        namaKaryawan: namaKaryawan ?? this.namaKaryawan,
        entitlementStatus: entitlementStatus ?? this.entitlementStatus,
        initialLeave: initialLeave ?? this.initialLeave,
      );

  factory TransLeavesModel.fromRawJson(String str) =>
      TransLeavesModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TransLeavesModel.fromJson(Map<String, dynamic> json) =>
      TransLeavesModel(
        autoNo: json["autoNo"],
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        pinId: json["pinId"],
        leaveNo: json["leaveNo"],
        status: json["status"],
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
        reffNo: json["reffNo"],
        takenDate: json["takenDate"],
        unTaken: json["unTaken"],
        jabatan: json["jabatan"],
        departemen: json["departemen"],
        dateJoin:
            json["dateJoin"] == null ? null : DateTime.parse(json["dateJoin"]),
        firstName: json["firstName"],
        cuti: json["cuti"],
        kodeDepartemen: json["kodeDepartemen"],
        kodeStatusKaryawan: json["kodeStatusKaryawan"],
        namaKaryawan: json["namaKaryawan"],
        entitlementStatus: json["entitlementStatus"],
        initialLeave: json["initialLeave"],
      );

  Map<String, dynamic> toJson() => {
        "autoNo": autoNo,
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "pinId": pinId,
        "leaveNo": leaveNo,
        "status": status,
        "keterangan": keterangan,
        "leave": leave,
        "entitlement": entitlement,
        "taken": taken,
        "remaining": remaining,
        "forfeited": forfeited,
        "tglLastUpdate": tglLastUpdate?.toIso8601String(),
        "optr": optr,
        "reff": reff,
        "reffNo": reffNo,
        "takenDate": takenDate,
        "unTaken": unTaken,
        "jabatan": jabatan,
        "departemen": departemen,
        "dateJoin": dateJoin?.toIso8601String(),
        "firstName": firstName,
        "cuti": cuti,
        "kodeDepartemen": kodeDepartemen,
        "kodeStatusKaryawan": kodeStatusKaryawan,
        "namaKaryawan": namaKaryawan,
        "entitlementStatus": entitlementStatus,
        "initialLeave": initialLeave,
      };
}
