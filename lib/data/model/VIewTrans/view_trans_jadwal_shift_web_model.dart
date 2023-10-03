import 'dart:convert';

ViewTransJadwalShiftWebModel viewTransJadwalShiftWebFromJson(String str) =>
    ViewTransJadwalShiftWebModel.fromJson(json.decode(str));

String viewTransJadwalShiftWebToJson(ViewTransJadwalShiftWebModel data) =>
    json.encode(data.toJson());

class ViewTransJadwalShiftWebModel {
  final String? noMesin;
  final String? namaKaryawan;
  final String? jabatan;
  final String? kodeDepartemen;
  final String? kodeBagian;
  final String? kodeKaryawan;
  final DateTime? tanggal;
  final String? noShift;
  final DateTime? masuk;
  final DateTime? pulang;
  final DateTime? jmlJamKerja;

  ViewTransJadwalShiftWebModel({
    this.noMesin,
    this.namaKaryawan,
    this.jabatan,
    this.kodeDepartemen,
    this.kodeBagian,
    this.kodeKaryawan,
    this.tanggal,
    this.noShift,
    this.masuk,
    this.pulang,
    this.jmlJamKerja,
  });

  ViewTransJadwalShiftWebModel copyWith({
    String? noMesin,
    String? namaKaryawan,
    String? jabatan,
    String? kodeDepartemen,
    String? kodeBagian,
    String? kodeKaryawan,
    DateTime? tanggal,
    String? noShift,
    DateTime? masuk,
    DateTime? pulang,
    DateTime? jmlJamKerja,
  }) =>
      ViewTransJadwalShiftWebModel(
        noMesin: noMesin ?? this.noMesin,
        namaKaryawan: namaKaryawan ?? this.namaKaryawan,
        jabatan: jabatan ?? this.jabatan,
        kodeDepartemen: kodeDepartemen ?? this.kodeDepartemen,
        kodeBagian: kodeBagian ?? this.kodeBagian,
        kodeKaryawan: kodeKaryawan ?? this.kodeKaryawan,
        tanggal: tanggal ?? this.tanggal,
        noShift: noShift ?? this.noShift,
        masuk: masuk ?? this.masuk,
        pulang: pulang ?? this.pulang,
        jmlJamKerja: jmlJamKerja ?? this.jmlJamKerja,
      );

  factory ViewTransJadwalShiftWebModel.fromRawJson(String str) =>
      ViewTransJadwalShiftWebModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewTransJadwalShiftWebModel.fromJson(Map<String, dynamic> json) =>
      ViewTransJadwalShiftWebModel(
        noMesin: json["noMesin"],
        namaKaryawan: json["namaKaryawan"],
        jabatan: json["jabatan"],
        kodeDepartemen: json["kodeDepartemen"],
        kodeBagian: json["kodeBagian"],
        kodeKaryawan: json["kodeKaryawan"],
        tanggal:
            json["tanggal"] == null ? null : DateTime.parse(json["tanggal"]),
        noShift: json["noShift"],
        masuk: json["masuk"] == null ? null : DateTime.parse(json["masuk"]),
        pulang: json["pulang"] == null ? null : DateTime.parse(json["pulang"]),
        jmlJamKerja: json["jmlJamKerja"] == null
            ? null
            : DateTime.parse(json["jmlJamKerja"]),
      );

  Map<String, dynamic> toJson() => {
        "noMesin": noMesin,
        "namaKaryawan": namaKaryawan,
        "jabatan": jabatan,
        "kodeDepartemen": kodeDepartemen,
        "kodeBagian": kodeBagian,
        "kodeKaryawan": kodeKaryawan,
        "tanggal": tanggal?.toIso8601String(),
        "noShift": noShift,
        "masuk": masuk?.toIso8601String(),
        "pulang": pulang?.toIso8601String(),
        "jmlJamKerja": jmlJamKerja?.toIso8601String(),
      };
}
