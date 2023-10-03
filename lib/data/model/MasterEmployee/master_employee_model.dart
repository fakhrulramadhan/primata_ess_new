import 'dart:convert';

List<MasterEmployeeModel> masterKaryawansFromJson(String str) =>
    List<MasterEmployeeModel>.from(
        json.decode(str).map((x) => MasterEmployeeModel.fromJson(x)));

String masterKaryawansToJson(List<MasterEmployeeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MasterEmployeeModel {
  final String? kodeKaryawan;
  final String? pinid;
  final String? noMesin;
  final String? namaKaryawan;
  final dynamic noKtp;
  final String? firstName;
  final String? lastName;
  final String? unitKerja;
  final String? kodeJabatan;
  final String? divisi;
  final String? kodeDepartemen;
  final String? kodeBagian;
  final String? kodeStatusKaryawan;
  final String? kodeJenisKelamin;
  final String? kodeStatusPerkawinan;
  final String? statusKaryawan;
  final dynamic pph21;
  final DateTime? tglLahir;
  final dynamic tempatLahir;
  final String? kodeAgama;
  final String? alamat;
  final dynamic city;
  final dynamic teleponRumah;
  final dynamic teleponRumah2;
  final dynamic teleponRumah3;
  final dynamic coOrigin;
  final dynamic handphone;
  final dynamic emailAddress;
  final DateTime? dateJoin;
  final DateTime? dueDate;
  final dynamic confirmed;
  final bool? terminated;
  final dynamic tglBerhenti;
  final dynamic alasan;
  final dynamic catatan;
  final String? linkPhoto;
  final dynamic deptHead;
  final dynamic deductions;
  final String? jamsostekPremium;
  final String? academic;
  final bool? medical;
  final dynamic spouseName;
  final dynamic birthDaySpouse;
  final String? emrgcyContactNamePhone2;
  final dynamic emrgcyContactNamePhone1;
  final dynamic the90DayConfirmation;
  final String? level;
  final dynamic levelValue;
  final dynamic language2;
  final dynamic extention;
  final dynamic postalCode;
  final dynamic region;
  final dynamic absenStatus;
  final dynamic absenValidUntil;
  final DateTime? tglLastUpdate;
  final String? optr;
  final dynamic hirarkiNo;
  final dynamic jabatanTmp;
  final dynamic clasMedical;
  final dynamic noShift;
  final dynamic noHrd;
  final dynamic forceFinger;
  final dynamic memo;
  final dynamic alamatSekarang;
  final dynamic kota;
  final dynamic kodePos2;
  final dynamic telp2;
  final dynamic telp1;
  final dynamic tlp3;
  final dynamic jmlAnak;
  final dynamic tahunLulus;
  final dynamic ukuranSepatu;
  final dynamic ukuranHem;
  final dynamic ukuranCelana;
  final dynamic busJemput;
  final dynamic pengalamanKerja;
  final dynamic perusahaanTerakhir;
  final String? golonganDarah;
  final dynamic nonAcademik;
  final String? firstGrade;
  final String? grade;
  final dynamic noJpk;
  final dynamic npwp;
  final DateTime? lastContrac;
  final dynamic lama;
  final dynamic mother;
  final DateTime? startContract;
  final DateTime? datejoinNew;
  final DateTime? expDate;
  final dynamic statusRecruitment;
  final dynamic nilaiTunjangan;
  final dynamic jenisTunjangan;
  final dynamic noKartu;
  final String? noaia;
  final dynamic jamsostekDate;
  final dynamic noRecruitment;
  final dynamic pathJabatan;
  final int? autono;
  final String? idCard;
  final String? skck;
  final bool? skckStatus;
  final dynamic pernyataan;
  final dynamic kk;
  final dynamic oldId;
  final DateTime? dateRetire;
  final String? marital;
  final dynamic kodeMedical;
  final dynamic jabatan;
  final dynamic xAgama;
  final dynamic xDivisi;
  final dynamic xDepartemen;
  final dynamic xBagian;
  final dynamic englishLevel;
  final dynamic lockerNo;
  final dynamic reHire;
  final String? recStatus;
  final dynamic simNo;
  final dynamic simExpire;
  final dynamic asalSekolah;
  final dynamic competencyRef;
  final dynamic competencyDueDate;
  final String? kkNo;
  final String? bpjsKesehatan;
  final dynamic skckExpire;
  final String? serikat;
  final dynamic serikatExpDate;
  final dynamic lockerDateTaken;
  final dynamic lockerDateReturn;
  final int? hemQty;
  final dynamic emrgcyRelation;
  final int? celanaQty;
  final int? sepatuQty;
  final dynamic ukuranRok;
  final int? rokQty;
  final dynamic altDept;
  final dynamic emrgcyContactNamePhone3;
  final bool? entitleMeal;
  final dynamic kitasNo;
  final dynamic kitasExp;
  final dynamic passportNo;
  final dynamic passportExp;
  final int? noShift2;
  final dynamic noAia1;
  final dynamic tglAia;
  final dynamic noBpjskes;
  final String? password;

  MasterEmployeeModel({
    this.kodeKaryawan,
    this.pinid,
    this.noMesin,
    this.namaKaryawan,
    this.noKtp,
    this.firstName,
    this.lastName,
    this.unitKerja,
    this.kodeJabatan,
    this.divisi,
    this.kodeDepartemen,
    this.kodeBagian,
    this.kodeStatusKaryawan,
    this.kodeJenisKelamin,
    this.kodeStatusPerkawinan,
    this.statusKaryawan,
    this.pph21,
    this.tglLahir,
    this.tempatLahir,
    this.kodeAgama,
    this.alamat,
    this.city,
    this.teleponRumah,
    this.teleponRumah2,
    this.teleponRumah3,
    this.coOrigin,
    this.handphone,
    this.emailAddress,
    this.dateJoin,
    this.dueDate,
    this.confirmed,
    this.terminated,
    this.tglBerhenti,
    this.alasan,
    this.catatan,
    this.linkPhoto,
    this.deptHead,
    this.deductions,
    this.jamsostekPremium,
    this.academic,
    this.medical,
    this.spouseName,
    this.birthDaySpouse,
    this.emrgcyContactNamePhone2,
    this.emrgcyContactNamePhone1,
    this.the90DayConfirmation,
    this.level,
    this.levelValue,
    this.language2,
    this.extention,
    this.postalCode,
    this.region,
    this.absenStatus,
    this.absenValidUntil,
    this.tglLastUpdate,
    this.optr,
    this.hirarkiNo,
    this.jabatanTmp,
    this.clasMedical,
    this.noShift,
    this.noHrd,
    this.forceFinger,
    this.memo,
    this.alamatSekarang,
    this.kota,
    this.kodePos2,
    this.telp2,
    this.telp1,
    this.tlp3,
    this.jmlAnak,
    this.tahunLulus,
    this.ukuranSepatu,
    this.ukuranHem,
    this.ukuranCelana,
    this.busJemput,
    this.pengalamanKerja,
    this.perusahaanTerakhir,
    this.golonganDarah,
    this.nonAcademik,
    this.firstGrade,
    this.grade,
    this.noJpk,
    this.npwp,
    this.lastContrac,
    this.lama,
    this.mother,
    this.startContract,
    this.datejoinNew,
    this.expDate,
    this.statusRecruitment,
    this.nilaiTunjangan,
    this.jenisTunjangan,
    this.noKartu,
    this.noaia,
    this.jamsostekDate,
    this.noRecruitment,
    this.pathJabatan,
    this.autono,
    this.idCard,
    this.skck,
    this.skckStatus,
    this.pernyataan,
    this.kk,
    this.oldId,
    this.dateRetire,
    this.marital,
    this.kodeMedical,
    this.jabatan,
    this.xAgama,
    this.xDivisi,
    this.xDepartemen,
    this.xBagian,
    this.englishLevel,
    this.lockerNo,
    this.reHire,
    this.recStatus,
    this.simNo,
    this.simExpire,
    this.asalSekolah,
    this.competencyRef,
    this.competencyDueDate,
    this.kkNo,
    this.bpjsKesehatan,
    this.skckExpire,
    this.serikat,
    this.serikatExpDate,
    this.lockerDateTaken,
    this.lockerDateReturn,
    this.hemQty,
    this.emrgcyRelation,
    this.celanaQty,
    this.sepatuQty,
    this.ukuranRok,
    this.rokQty,
    this.altDept,
    this.emrgcyContactNamePhone3,
    this.entitleMeal,
    this.kitasNo,
    this.kitasExp,
    this.passportNo,
    this.passportExp,
    this.noShift2,
    this.noAia1,
    this.tglAia,
    this.noBpjskes,
    this.password,
  });

  MasterEmployeeModel copyWith({
    String? kodeKaryawan,
    String? pinid,
    String? noMesin,
    String? namaKaryawan,
    dynamic noKtp,
    String? firstName,
    String? lastName,
    String? unitKerja,
    String? kodeJabatan,
    String? divisi,
    String? kodeDepartemen,
    String? kodeBagian,
    String? kodeStatusKaryawan,
    String? kodeJenisKelamin,
    String? kodeStatusPerkawinan,
    String? statusKaryawan,
    dynamic pph21,
    DateTime? tglLahir,
    dynamic tempatLahir,
    String? kodeAgama,
    String? alamat,
    dynamic city,
    dynamic teleponRumah,
    dynamic teleponRumah2,
    dynamic teleponRumah3,
    dynamic coOrigin,
    dynamic handphone,
    dynamic emailAddress,
    DateTime? dateJoin,
    DateTime? dueDate,
    dynamic confirmed,
    bool? terminated,
    dynamic tglBerhenti,
    dynamic alasan,
    dynamic catatan,
    String? linkPhoto,
    dynamic deptHead,
    dynamic deductions,
    String? jamsostekPremium,
    String? academic,
    bool? medical,
    dynamic spouseName,
    dynamic birthDaySpouse,
    String? emrgcyContactNamePhone2,
    dynamic emrgcyContactNamePhone1,
    dynamic the90DayConfirmation,
    String? level,
    dynamic levelValue,
    dynamic language2,
    dynamic extention,
    dynamic postalCode,
    dynamic region,
    dynamic absenStatus,
    dynamic absenValidUntil,
    DateTime? tglLastUpdate,
    String? optr,
    dynamic hirarkiNo,
    dynamic jabatanTmp,
    dynamic clasMedical,
    dynamic noShift,
    dynamic noHrd,
    dynamic forceFinger,
    dynamic memo,
    dynamic alamatSekarang,
    dynamic kota,
    dynamic kodePos2,
    dynamic telp2,
    dynamic telp1,
    dynamic tlp3,
    dynamic jmlAnak,
    dynamic tahunLulus,
    dynamic ukuranSepatu,
    dynamic ukuranHem,
    dynamic ukuranCelana,
    dynamic busJemput,
    dynamic pengalamanKerja,
    dynamic perusahaanTerakhir,
    String? golonganDarah,
    dynamic nonAcademik,
    String? firstGrade,
    String? grade,
    dynamic noJpk,
    dynamic npwp,
    DateTime? lastContrac,
    dynamic lama,
    dynamic mother,
    DateTime? startContract,
    DateTime? datejoinNew,
    DateTime? expDate,
    dynamic statusRecruitment,
    dynamic nilaiTunjangan,
    dynamic jenisTunjangan,
    dynamic noKartu,
    String? noaia,
    dynamic jamsostekDate,
    dynamic noRecruitment,
    dynamic pathJabatan,
    int? autono,
    String? idCard,
    String? skck,
    bool? skckStatus,
    dynamic pernyataan,
    dynamic kk,
    dynamic oldId,
    DateTime? dateRetire,
    String? marital,
    dynamic kodeMedical,
    dynamic jabatan,
    dynamic xAgama,
    dynamic xDivisi,
    dynamic xDepartemen,
    dynamic xBagian,
    dynamic englishLevel,
    dynamic lockerNo,
    dynamic reHire,
    String? recStatus,
    dynamic simNo,
    dynamic simExpire,
    dynamic asalSekolah,
    dynamic competencyRef,
    dynamic competencyDueDate,
    String? kkNo,
    String? bpjsKesehatan,
    dynamic skckExpire,
    String? serikat,
    dynamic serikatExpDate,
    dynamic lockerDateTaken,
    dynamic lockerDateReturn,
    int? hemQty,
    dynamic emrgcyRelation,
    int? celanaQty,
    int? sepatuQty,
    dynamic ukuranRok,
    int? rokQty,
    dynamic altDept,
    dynamic emrgcyContactNamePhone3,
    bool? entitleMeal,
    dynamic kitasNo,
    dynamic kitasExp,
    dynamic passportNo,
    dynamic passportExp,
    int? noShift2,
    dynamic noAia1,
    dynamic tglAia,
    dynamic noBpjskes,
    String? password,
  }) =>
      MasterEmployeeModel(
        kodeKaryawan: kodeKaryawan ?? this.kodeKaryawan,
        pinid: pinid ?? this.pinid,
        noMesin: noMesin ?? this.noMesin,
        namaKaryawan: namaKaryawan ?? this.namaKaryawan,
        noKtp: noKtp ?? this.noKtp,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        unitKerja: unitKerja ?? this.unitKerja,
        kodeJabatan: kodeJabatan ?? this.kodeJabatan,
        divisi: divisi ?? this.divisi,
        kodeDepartemen: kodeDepartemen ?? this.kodeDepartemen,
        kodeBagian: kodeBagian ?? this.kodeBagian,
        kodeStatusKaryawan: kodeStatusKaryawan ?? this.kodeStatusKaryawan,
        kodeJenisKelamin: kodeJenisKelamin ?? this.kodeJenisKelamin,
        kodeStatusPerkawinan: kodeStatusPerkawinan ?? this.kodeStatusPerkawinan,
        statusKaryawan: statusKaryawan ?? this.statusKaryawan,
        pph21: pph21 ?? this.pph21,
        tglLahir: tglLahir ?? this.tglLahir,
        tempatLahir: tempatLahir ?? this.tempatLahir,
        kodeAgama: kodeAgama ?? this.kodeAgama,
        alamat: alamat ?? this.alamat,
        city: city ?? this.city,
        teleponRumah: teleponRumah ?? this.teleponRumah,
        teleponRumah2: teleponRumah2 ?? this.teleponRumah2,
        teleponRumah3: teleponRumah3 ?? this.teleponRumah3,
        coOrigin: coOrigin ?? this.coOrigin,
        handphone: handphone ?? this.handphone,
        emailAddress: emailAddress ?? this.emailAddress,
        dateJoin: dateJoin ?? this.dateJoin,
        dueDate: dueDate ?? this.dueDate,
        confirmed: confirmed ?? this.confirmed,
        terminated: terminated ?? this.terminated,
        tglBerhenti: tglBerhenti ?? this.tglBerhenti,
        alasan: alasan ?? this.alasan,
        catatan: catatan ?? this.catatan,
        linkPhoto: linkPhoto ?? this.linkPhoto,
        deptHead: deptHead ?? this.deptHead,
        deductions: deductions ?? this.deductions,
        jamsostekPremium: jamsostekPremium ?? this.jamsostekPremium,
        academic: academic ?? this.academic,
        medical: medical ?? this.medical,
        spouseName: spouseName ?? this.spouseName,
        birthDaySpouse: birthDaySpouse ?? this.birthDaySpouse,
        emrgcyContactNamePhone2:
            emrgcyContactNamePhone2 ?? this.emrgcyContactNamePhone2,
        emrgcyContactNamePhone1:
            emrgcyContactNamePhone1 ?? this.emrgcyContactNamePhone1,
        the90DayConfirmation: the90DayConfirmation ?? this.the90DayConfirmation,
        level: level ?? this.level,
        levelValue: levelValue ?? this.levelValue,
        language2: language2 ?? this.language2,
        extention: extention ?? this.extention,
        postalCode: postalCode ?? this.postalCode,
        region: region ?? this.region,
        absenStatus: absenStatus ?? this.absenStatus,
        absenValidUntil: absenValidUntil ?? this.absenValidUntil,
        tglLastUpdate: tglLastUpdate ?? this.tglLastUpdate,
        optr: optr ?? this.optr,
        hirarkiNo: hirarkiNo ?? this.hirarkiNo,
        jabatanTmp: jabatanTmp ?? this.jabatanTmp,
        clasMedical: clasMedical ?? this.clasMedical,
        noShift: noShift ?? this.noShift,
        noHrd: noHrd ?? this.noHrd,
        forceFinger: forceFinger ?? this.forceFinger,
        memo: memo ?? this.memo,
        alamatSekarang: alamatSekarang ?? this.alamatSekarang,
        kota: kota ?? this.kota,
        kodePos2: kodePos2 ?? this.kodePos2,
        telp2: telp2 ?? this.telp2,
        telp1: telp1 ?? this.telp1,
        tlp3: tlp3 ?? this.tlp3,
        jmlAnak: jmlAnak ?? this.jmlAnak,
        tahunLulus: tahunLulus ?? this.tahunLulus,
        ukuranSepatu: ukuranSepatu ?? this.ukuranSepatu,
        ukuranHem: ukuranHem ?? this.ukuranHem,
        ukuranCelana: ukuranCelana ?? this.ukuranCelana,
        busJemput: busJemput ?? this.busJemput,
        pengalamanKerja: pengalamanKerja ?? this.pengalamanKerja,
        perusahaanTerakhir: perusahaanTerakhir ?? this.perusahaanTerakhir,
        golonganDarah: golonganDarah ?? this.golonganDarah,
        nonAcademik: nonAcademik ?? this.nonAcademik,
        firstGrade: firstGrade ?? this.firstGrade,
        grade: grade ?? this.grade,
        noJpk: noJpk ?? this.noJpk,
        npwp: npwp ?? this.npwp,
        lastContrac: lastContrac ?? this.lastContrac,
        lama: lama ?? this.lama,
        mother: mother ?? this.mother,
        startContract: startContract ?? this.startContract,
        datejoinNew: datejoinNew ?? this.datejoinNew,
        expDate: expDate ?? this.expDate,
        statusRecruitment: statusRecruitment ?? this.statusRecruitment,
        nilaiTunjangan: nilaiTunjangan ?? this.nilaiTunjangan,
        jenisTunjangan: jenisTunjangan ?? this.jenisTunjangan,
        noKartu: noKartu ?? this.noKartu,
        noaia: noaia ?? this.noaia,
        jamsostekDate: jamsostekDate ?? this.jamsostekDate,
        noRecruitment: noRecruitment ?? this.noRecruitment,
        pathJabatan: pathJabatan ?? this.pathJabatan,
        autono: autono ?? this.autono,
        idCard: idCard ?? this.idCard,
        skck: skck ?? this.skck,
        skckStatus: skckStatus ?? this.skckStatus,
        pernyataan: pernyataan ?? this.pernyataan,
        kk: kk ?? this.kk,
        oldId: oldId ?? this.oldId,
        dateRetire: dateRetire ?? this.dateRetire,
        marital: marital ?? this.marital,
        kodeMedical: kodeMedical ?? this.kodeMedical,
        jabatan: jabatan ?? this.jabatan,
        xAgama: xAgama ?? this.xAgama,
        xDivisi: xDivisi ?? this.xDivisi,
        xDepartemen: xDepartemen ?? this.xDepartemen,
        xBagian: xBagian ?? this.xBagian,
        englishLevel: englishLevel ?? this.englishLevel,
        lockerNo: lockerNo ?? this.lockerNo,
        reHire: reHire ?? this.reHire,
        recStatus: recStatus ?? this.recStatus,
        simNo: simNo ?? this.simNo,
        simExpire: simExpire ?? this.simExpire,
        asalSekolah: asalSekolah ?? this.asalSekolah,
        competencyRef: competencyRef ?? this.competencyRef,
        competencyDueDate: competencyDueDate ?? this.competencyDueDate,
        kkNo: kkNo ?? this.kkNo,
        bpjsKesehatan: bpjsKesehatan ?? this.bpjsKesehatan,
        skckExpire: skckExpire ?? this.skckExpire,
        serikat: serikat ?? this.serikat,
        serikatExpDate: serikatExpDate ?? this.serikatExpDate,
        lockerDateTaken: lockerDateTaken ?? this.lockerDateTaken,
        lockerDateReturn: lockerDateReturn ?? this.lockerDateReturn,
        hemQty: hemQty ?? this.hemQty,
        emrgcyRelation: emrgcyRelation ?? this.emrgcyRelation,
        celanaQty: celanaQty ?? this.celanaQty,
        sepatuQty: sepatuQty ?? this.sepatuQty,
        ukuranRok: ukuranRok ?? this.ukuranRok,
        rokQty: rokQty ?? this.rokQty,
        altDept: altDept ?? this.altDept,
        emrgcyContactNamePhone3:
            emrgcyContactNamePhone3 ?? this.emrgcyContactNamePhone3,
        entitleMeal: entitleMeal ?? this.entitleMeal,
        kitasNo: kitasNo ?? this.kitasNo,
        kitasExp: kitasExp ?? this.kitasExp,
        passportNo: passportNo ?? this.passportNo,
        passportExp: passportExp ?? this.passportExp,
        noShift2: noShift2 ?? this.noShift2,
        noAia1: noAia1 ?? this.noAia1,
        tglAia: tglAia ?? this.tglAia,
        noBpjskes: noBpjskes ?? this.noBpjskes,
        password: password ?? this.password,
      );

  factory MasterEmployeeModel.fromRawJson(String str) =>
      MasterEmployeeModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MasterEmployeeModel.fromJson(Map<String, dynamic> json) =>
      MasterEmployeeModel(
        kodeKaryawan: json["kodeKaryawan"],
        pinid: json["pinid"],
        noMesin: json["noMesin"],
        namaKaryawan: json["namaKaryawan"],
        noKtp: json["noKtp"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        unitKerja: json["unitKerja"],
        kodeJabatan: json["kodeJabatan"],
        divisi: json["divisi"],
        kodeDepartemen: json["kodeDepartemen"],
        kodeBagian: json["kodeBagian"],
        kodeStatusKaryawan: json["kodeStatusKaryawan"],
        kodeJenisKelamin: json["kodeJenisKelamin"],
        kodeStatusPerkawinan: json["kodeStatusPerkawinan"],
        statusKaryawan: json["statusKaryawan"],
        pph21: json["pph21"],
        tglLahir:
            json["tglLahir"] == null ? null : DateTime.parse(json["tglLahir"]),
        tempatLahir: json["tempatLahir"],
        kodeAgama: json["kodeAgama"],
        alamat: json["alamat"],
        city: json["city"],
        teleponRumah: json["teleponRumah"],
        teleponRumah2: json["teleponRumah2"],
        teleponRumah3: json["teleponRumah3"],
        coOrigin: json["coOrigin"],
        handphone: json["handphone"],
        emailAddress: json["emailAddress"],
        dateJoin:
            json["dateJoin"] == null ? null : DateTime.parse(json["dateJoin"]),
        dueDate:
            json["dueDate"] == null ? null : DateTime.parse(json["dueDate"]),
        confirmed: json["confirmed"],
        terminated: json["terminated"],
        tglBerhenti: json["tglBerhenti"],
        alasan: json["alasan"],
        catatan: json["catatan"],
        linkPhoto: json["linkPhoto"],
        deptHead: json["deptHead"],
        deductions: json["deductions"],
        jamsostekPremium: json["jamsostekPremium"],
        academic: json["academic"],
        medical: json["medical"],
        spouseName: json["spouseName"],
        birthDaySpouse: json["birthDaySpouse"],
        emrgcyContactNamePhone2: json["emrgcyContactNamePhone2"],
        emrgcyContactNamePhone1: json["emrgcyContactNamePhone1"],
        the90DayConfirmation: json["_90DayConfirmation"],
        level: json["level"],
        levelValue: json["levelValue"],
        language2: json["language2"],
        extention: json["extention"],
        postalCode: json["postalCode"],
        region: json["region"],
        absenStatus: json["absenStatus"],
        absenValidUntil: json["absenValidUntil"],
        tglLastUpdate: json["tglLastUpdate"] == null
            ? null
            : DateTime.parse(json["tglLastUpdate"]),
        optr: json["optr"],
        hirarkiNo: json["hirarkiNo"],
        jabatanTmp: json["jabatanTmp"],
        clasMedical: json["clasMedical"],
        noShift: json["noShift"],
        noHrd: json["noHrd"],
        forceFinger: json["forceFinger"],
        memo: json["memo"],
        alamatSekarang: json["alamatSekarang"],
        kota: json["kota"],
        kodePos2: json["kodePos2"],
        telp2: json["telp2"],
        telp1: json["telp1"],
        tlp3: json["tlp3"],
        jmlAnak: json["jmlAnak"],
        tahunLulus: json["tahunLulus"],
        ukuranSepatu: json["ukuranSepatu"],
        ukuranHem: json["ukuranHem"],
        ukuranCelana: json["ukuranCelana"],
        busJemput: json["busJemput"],
        pengalamanKerja: json["pengalamanKerja"],
        perusahaanTerakhir: json["perusahaanTerakhir"],
        golonganDarah: json["golonganDarah"],
        nonAcademik: json["nonAcademik"],
        firstGrade: json["firstGrade"],
        grade: json["grade"],
        noJpk: json["noJpk"],
        npwp: json["npwp"],
        lastContrac: json["lastContrac"] == null
            ? null
            : DateTime.parse(json["lastContrac"]),
        lama: json["lama"],
        mother: json["mother"],
        startContract: json["startContract"] == null
            ? null
            : DateTime.parse(json["startContract"]),
        datejoinNew: json["datejoinNew"] == null
            ? null
            : DateTime.parse(json["datejoinNew"]),
        expDate:
            json["expDate"] == null ? null : DateTime.parse(json["expDate"]),
        statusRecruitment: json["statusRecruitment"],
        nilaiTunjangan: json["nilaiTunjangan"],
        jenisTunjangan: json["jenisTunjangan"],
        noKartu: json["noKartu"],
        noaia: json["noaia"],
        jamsostekDate: json["jamsostekDate"],
        noRecruitment: json["noRecruitment"],
        pathJabatan: json["pathJabatan"],
        autono: json["autono"],
        idCard: json["idCard"],
        skck: json["skck"],
        skckStatus: json["skckStatus"],
        pernyataan: json["pernyataan"],
        kk: json["kk"],
        oldId: json["oldId"],
        dateRetire: json["dateRetire"] == null
            ? null
            : DateTime.parse(json["dateRetire"]),
        marital: json["marital"],
        kodeMedical: json["kodeMedical"],
        jabatan: json["jabatan"],
        xAgama: json["xAgama"],
        xDivisi: json["xDivisi"],
        xDepartemen: json["xDepartemen"],
        xBagian: json["xBagian"],
        englishLevel: json["englishLevel"],
        lockerNo: json["lockerNo"],
        reHire: json["reHire"],
        recStatus: json["recStatus"],
        simNo: json["simNo"],
        simExpire: json["simExpire"],
        asalSekolah: json["asalSekolah"],
        competencyRef: json["competencyRef"],
        competencyDueDate: json["competencyDueDate"],
        kkNo: json["kkNo"],
        bpjsKesehatan: json["bpjsKesehatan"],
        skckExpire: json["skckExpire"],
        serikat: json["serikat"],
        serikatExpDate: json["serikatExpDate"],
        lockerDateTaken: json["lockerDateTaken"],
        lockerDateReturn: json["lockerDateReturn"],
        hemQty: json["hemQty"],
        emrgcyRelation: json["emrgcyRelation"],
        celanaQty: json["celanaQty"],
        sepatuQty: json["sepatuQty"],
        ukuranRok: json["ukuranRok"],
        rokQty: json["rokQty"],
        altDept: json["altDept"],
        emrgcyContactNamePhone3: json["emrgcyContactNamePhone3"],
        entitleMeal: json["entitleMeal"],
        kitasNo: json["kitasNo"],
        kitasExp: json["kitasExp"],
        passportNo: json["passportNo"],
        passportExp: json["passportExp"],
        noShift2: json["noShift2"],
        noAia1: json["noAia1"],
        tglAia: json["tglAia"],
        noBpjskes: json["noBpjskes"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "kodeKaryawan": kodeKaryawan,
        "pinid": pinid,
        "noMesin": noMesin,
        "namaKaryawan": namaKaryawan,
        "noKtp": noKtp,
        "firstName": firstName,
        "lastName": lastName,
        "unitKerja": unitKerja,
        "kodeJabatan": kodeJabatan,
        "divisi": divisi,
        "kodeDepartemen": kodeDepartemen,
        "kodeBagian": kodeBagian,
        "kodeStatusKaryawan": kodeStatusKaryawan,
        "kodeJenisKelamin": kodeJenisKelamin,
        "kodeStatusPerkawinan": kodeStatusPerkawinan,
        "statusKaryawan": statusKaryawan,
        "pph21": pph21,
        "tglLahir": tglLahir?.toIso8601String(),
        "tempatLahir": tempatLahir,
        "kodeAgama": kodeAgama,
        "alamat": alamat,
        "city": city,
        "teleponRumah": teleponRumah,
        "teleponRumah2": teleponRumah2,
        "teleponRumah3": teleponRumah3,
        "coOrigin": coOrigin,
        "handphone": handphone,
        "emailAddress": emailAddress,
        "dateJoin": dateJoin?.toIso8601String(),
        "dueDate": dueDate?.toIso8601String(),
        "confirmed": confirmed,
        "terminated": terminated,
        "tglBerhenti": tglBerhenti,
        "alasan": alasan,
        "catatan": catatan,
        "linkPhoto": linkPhoto,
        "deptHead": deptHead,
        "deductions": deductions,
        "jamsostekPremium": jamsostekPremium,
        "academic": academic,
        "medical": medical,
        "spouseName": spouseName,
        "birthDaySpouse": birthDaySpouse,
        "emrgcyContactNamePhone2": emrgcyContactNamePhone2,
        "emrgcyContactNamePhone1": emrgcyContactNamePhone1,
        "_90DayConfirmation": the90DayConfirmation,
        "level": level,
        "levelValue": levelValue,
        "language2": language2,
        "extention": extention,
        "postalCode": postalCode,
        "region": region,
        "absenStatus": absenStatus,
        "absenValidUntil": absenValidUntil,
        "tglLastUpdate": tglLastUpdate?.toIso8601String(),
        "optr": optr,
        "hirarkiNo": hirarkiNo,
        "jabatanTmp": jabatanTmp,
        "clasMedical": clasMedical,
        "noShift": noShift,
        "noHrd": noHrd,
        "forceFinger": forceFinger,
        "memo": memo,
        "alamatSekarang": alamatSekarang,
        "kota": kota,
        "kodePos2": kodePos2,
        "telp2": telp2,
        "telp1": telp1,
        "tlp3": tlp3,
        "jmlAnak": jmlAnak,
        "tahunLulus": tahunLulus,
        "ukuranSepatu": ukuranSepatu,
        "ukuranHem": ukuranHem,
        "ukuranCelana": ukuranCelana,
        "busJemput": busJemput,
        "pengalamanKerja": pengalamanKerja,
        "perusahaanTerakhir": perusahaanTerakhir,
        "golonganDarah": golonganDarah,
        "nonAcademik": nonAcademik,
        "firstGrade": firstGrade,
        "grade": grade,
        "noJpk": noJpk,
        "npwp": npwp,
        "lastContrac": lastContrac?.toIso8601String(),
        "lama": lama,
        "mother": mother,
        "startContract": startContract?.toIso8601String(),
        "datejoinNew": datejoinNew?.toIso8601String(),
        "expDate": expDate?.toIso8601String(),
        "statusRecruitment": statusRecruitment,
        "nilaiTunjangan": nilaiTunjangan,
        "jenisTunjangan": jenisTunjangan,
        "noKartu": noKartu,
        "noaia": noaia,
        "jamsostekDate": jamsostekDate,
        "noRecruitment": noRecruitment,
        "pathJabatan": pathJabatan,
        "autono": autono,
        "idCard": idCard,
        "skck": skck,
        "skckStatus": skckStatus,
        "pernyataan": pernyataan,
        "kk": kk,
        "oldId": oldId,
        "dateRetire": dateRetire?.toIso8601String(),
        "marital": marital,
        "kodeMedical": kodeMedical,
        "jabatan": jabatan,
        "xAgama": xAgama,
        "xDivisi": xDivisi,
        "xDepartemen": xDepartemen,
        "xBagian": xBagian,
        "englishLevel": englishLevel,
        "lockerNo": lockerNo,
        "reHire": reHire,
        "recStatus": recStatus,
        "simNo": simNo,
        "simExpire": simExpire,
        "asalSekolah": asalSekolah,
        "competencyRef": competencyRef,
        "competencyDueDate": competencyDueDate,
        "kkNo": kkNo,
        "bpjsKesehatan": bpjsKesehatan,
        "skckExpire": skckExpire,
        "serikat": serikat,
        "serikatExpDate": serikatExpDate,
        "lockerDateTaken": lockerDateTaken,
        "lockerDateReturn": lockerDateReturn,
        "hemQty": hemQty,
        "emrgcyRelation": emrgcyRelation,
        "celanaQty": celanaQty,
        "sepatuQty": sepatuQty,
        "ukuranRok": ukuranRok,
        "rokQty": rokQty,
        "altDept": altDept,
        "emrgcyContactNamePhone3": emrgcyContactNamePhone3,
        "entitleMeal": entitleMeal,
        "kitasNo": kitasNo,
        "kitasExp": kitasExp,
        "passportNo": passportNo,
        "passportExp": passportExp,
        "noShift2": noShift2,
        "noAia1": noAia1,
        "tglAia": tglAia,
        "noBpjskes": noBpjskes,
        "password": password,
      };
}
