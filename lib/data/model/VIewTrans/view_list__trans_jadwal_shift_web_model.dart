import 'dart:convert';

class ListViewTransJadwalShiftWebModel {
  final String? noMesin;
  final String? namaKaryawan;
  final String? jabatan;
  final String? kodeDepartemen;
  final String? kodeBagian;
  final String? kodeKaryawan;
  final DateTime? tanggal;
  final String? noShift;
  final dynamic masuk;
  final dynamic pulang;
  final dynamic jmlJamKerja;
  final dynamic istirahat1;
  final dynamic istirahat2;

  ListViewTransJadwalShiftWebModel({
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
    this.istirahat1,
    this.istirahat2,
  });

  factory ListViewTransJadwalShiftWebModel.fromRawJson(String str) =>
      ListViewTransJadwalShiftWebModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListViewTransJadwalShiftWebModel.fromJson(
          Map<String, dynamic> json) =>
      ListViewTransJadwalShiftWebModel(
        noMesin: json["noMesin"],
        namaKaryawan: json["namaKaryawan"],
        jabatan: json["jabatan"],
        kodeDepartemen: json["kodeDepartemen"],
        kodeBagian: json["kodeBagian"],
        kodeKaryawan: json["kodeKaryawan"],
        tanggal:
            json["tanggal"] == null ? null : DateTime.parse(json["tanggal"]),
        noShift: json["noShift"],
        masuk: json["masuk"],
        pulang: json["pulang"],
        jmlJamKerja: json["jmlJamKerja"],
        istirahat1: json["istirahat1"],
        istirahat2: json["istirahat2"],
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
        "masuk": masuk,
        "pulang": pulang,
        "jmlJamKerja": jmlJamKerja,
        "istirahat1": istirahat1,
        "istirahat2": istirahat2,
      };
}
