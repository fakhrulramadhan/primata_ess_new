import 'dart:convert';

class ViewMasterEmployeeListCompleteModel {
  final String? emplId;
  final dynamic altId;
  final String? fingerId;
  final String? employeeName;
  final String? nickName;
  final String? divisionId;
  final String? division;
  final String? departmentId;
  final String? department;
  final String? sectionId;
  final String? section;
  final String? positionId;
  final String? position;
  final String? genderId;
  final String? gender;
  final dynamic placeOfBirth;
  final DateTime? dateOfBirth;
  final int? age;
  final String? maritalId;
  final String? maritalStatus;
  final String? emplStatusId;
  final String? emplStatus;
  final String? categoryId;
  final String? category;
  final String? levelId;
  final String? levelDescription;
  final String? levelGategory;
  final bool? resignation;
  final dynamic resignationDate;
  final dynamic resignationReason;
  final dynamic hireBack;
  final String? bloodType;
  final String? religionId;
  final String? religion;
  final String? academicLevel;
  final dynamic graduationYear;
  final dynamic nonAcademic;
  final DateTime? hireDate;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? photoFile;
  final String? idCard;
  final DateTime? idCardExpDate;
  final dynamic personalEmail;
  final dynamic companyEmail;
  final dynamic phoneNumber;
  final dynamic mobilePhone1;
  final dynamic mobilePhone2;
  final String? address1;
  final dynamic address2;
  final dynamic emplOrigin;
  final dynamic postalCode;
  final dynamic city;
  final dynamic taxCodePph21;
  final dynamic npwpNumber;
  final dynamic jpkNumber;
  final String? bpjsEmpl;
  final String? bpjsHealth;
  final bool? medicalBenefit;
  final String? aiaInsurance;
  final bool? skckStatus;
  final String? skckNumber;
  final dynamic emergencyContactName;
  final String? emergencyContactAddress;
  final dynamic motherName;
  final dynamic tShirtSize;
  final dynamic shoesSize;
  final dynamic trousersSize;
  final dynamic emplNotes;
  final int? basicSalary;
  final String? kkNo;
  final String? unitKerja;
  final dynamic englishLevel;
  final dynamic asalSekolah;
  final dynamic kitasNo;
  final dynamic kitasExp;
  final dynamic passportNo;
  final dynamic passportExp;
  final dynamic simNo;
  final dynamic simExpire;
  final dynamic noKtp;
  final dynamic coOrigin;
  final dynamic handphone;
  final dynamic emailAddress;
  final DateTime? dueDate;
  final dynamic confirmed;
  final dynamic deptHead;
  final dynamic deductions;
  final dynamic spouseName;
  final dynamic birthDaySpouse;
  final dynamic the90DayConfirmation;
  final String? level;
  final dynamic levelValue;
  final dynamic language2;
  final dynamic extention;
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
  final dynamic kota;
  final dynamic telp1;
  final dynamic tlp3;
  final dynamic jmlAnak;
  final dynamic busJemput;
  final dynamic pengalamanKerja;
  final dynamic perusahaanTerakhir;
  final String? firstGrade;
  final DateTime? lastContrac;
  final dynamic lama;
  final DateTime? datejoinNew;
  final dynamic statusRecruitment;
  final dynamic nilaiTunjangan;
  final dynamic jenisTunjangan;
  final dynamic noKartu;
  final dynamic jamsostekDate;
  final dynamic noRecruitment;
  final dynamic pathJabatan;
  final int? autono;
  final dynamic pernyataan;
  final dynamic kk;
  final DateTime? dateRetire;
  final String? marital;
  final dynamic kodeMedical;
  final dynamic jabatan;
  final dynamic xAgama;
  final dynamic xDivisi;
  final dynamic xDepartemen;
  final dynamic xBagian;
  final dynamic lockerNo;
  final dynamic noAia;
  final dynamic tglAia;
  final String? recStatus;
  final dynamic noBpjskes;
  final dynamic competencyRef;
  final dynamic competencyDueDate;
  final dynamic skckExpire;
  final String? serikat;
  final dynamic serikatExpDate;
  final dynamic lockerDateTaken;
  final dynamic lockerDateReturn;
  final dynamic emrgcyRelation;
  final int? celanaQty;
  final int? sepatuQty;
  final dynamic ukuranRok;
  final int? rokQty;
  final int? hemQty;
  final String? password;
  final bool? entitleMeal;
  final dynamic altDept;
  final dynamic emrgcyContactNamePhone3;
  final int? noShift2;

  ViewMasterEmployeeListCompleteModel({
    this.emplId,
    this.altId,
    this.fingerId,
    this.employeeName,
    this.nickName,
    this.divisionId,
    this.division,
    this.departmentId,
    this.department,
    this.sectionId,
    this.section,
    this.positionId,
    this.position,
    this.genderId,
    this.gender,
    this.placeOfBirth,
    this.dateOfBirth,
    this.age,
    this.maritalId,
    this.maritalStatus,
    this.emplStatusId,
    this.emplStatus,
    this.categoryId,
    this.category,
    this.levelId,
    this.levelDescription,
    this.levelGategory,
    this.resignation,
    this.resignationDate,
    this.resignationReason,
    this.hireBack,
    this.bloodType,
    this.religionId,
    this.religion,
    this.academicLevel,
    this.graduationYear,
    this.nonAcademic,
    this.hireDate,
    this.startDate,
    this.endDate,
    this.photoFile,
    this.idCard,
    this.idCardExpDate,
    this.personalEmail,
    this.companyEmail,
    this.phoneNumber,
    this.mobilePhone1,
    this.mobilePhone2,
    this.address1,
    this.address2,
    this.emplOrigin,
    this.postalCode,
    this.city,
    this.taxCodePph21,
    this.npwpNumber,
    this.jpkNumber,
    this.bpjsEmpl,
    this.bpjsHealth,
    this.medicalBenefit,
    this.aiaInsurance,
    this.skckStatus,
    this.skckNumber,
    this.emergencyContactName,
    this.emergencyContactAddress,
    this.motherName,
    this.tShirtSize,
    this.shoesSize,
    this.trousersSize,
    this.emplNotes,
    this.basicSalary,
    this.kkNo,
    this.unitKerja,
    this.englishLevel,
    this.asalSekolah,
    this.kitasNo,
    this.kitasExp,
    this.passportNo,
    this.passportExp,
    this.simNo,
    this.simExpire,
    this.noKtp,
    this.coOrigin,
    this.handphone,
    this.emailAddress,
    this.dueDate,
    this.confirmed,
    this.deptHead,
    this.deductions,
    this.spouseName,
    this.birthDaySpouse,
    this.the90DayConfirmation,
    this.level,
    this.levelValue,
    this.language2,
    this.extention,
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
    this.kota,
    this.telp1,
    this.tlp3,
    this.jmlAnak,
    this.busJemput,
    this.pengalamanKerja,
    this.perusahaanTerakhir,
    this.firstGrade,
    this.lastContrac,
    this.lama,
    this.datejoinNew,
    this.statusRecruitment,
    this.nilaiTunjangan,
    this.jenisTunjangan,
    this.noKartu,
    this.jamsostekDate,
    this.noRecruitment,
    this.pathJabatan,
    this.autono,
    this.pernyataan,
    this.kk,
    this.dateRetire,
    this.marital,
    this.kodeMedical,
    this.jabatan,
    this.xAgama,
    this.xDivisi,
    this.xDepartemen,
    this.xBagian,
    this.lockerNo,
    this.noAia,
    this.tglAia,
    this.recStatus,
    this.noBpjskes,
    this.competencyRef,
    this.competencyDueDate,
    this.skckExpire,
    this.serikat,
    this.serikatExpDate,
    this.lockerDateTaken,
    this.lockerDateReturn,
    this.emrgcyRelation,
    this.celanaQty,
    this.sepatuQty,
    this.ukuranRok,
    this.rokQty,
    this.hemQty,
    this.password,
    this.entitleMeal,
    this.altDept,
    this.emrgcyContactNamePhone3,
    this.noShift2,
  });

  ViewMasterEmployeeListCompleteModel copyWith({
    String? emplId,
    dynamic altId,
    String? fingerId,
    String? employeeName,
    String? nickName,
    String? divisionId,
    String? division,
    String? departmentId,
    String? department,
    String? sectionId,
    String? section,
    String? positionId,
    String? position,
    String? genderId,
    String? gender,
    dynamic placeOfBirth,
    DateTime? dateOfBirth,
    int? age,
    String? maritalId,
    String? maritalStatus,
    String? emplStatusId,
    String? emplStatus,
    String? categoryId,
    String? category,
    String? levelId,
    String? levelDescription,
    String? levelGategory,
    bool? resignation,
    dynamic resignationDate,
    dynamic resignationReason,
    dynamic hireBack,
    String? bloodType,
    String? religionId,
    String? religion,
    String? academicLevel,
    dynamic graduationYear,
    dynamic nonAcademic,
    DateTime? hireDate,
    DateTime? startDate,
    DateTime? endDate,
    String? photoFile,
    String? idCard,
    DateTime? idCardExpDate,
    dynamic personalEmail,
    dynamic companyEmail,
    dynamic phoneNumber,
    dynamic mobilePhone1,
    dynamic mobilePhone2,
    String? address1,
    dynamic address2,
    dynamic emplOrigin,
    dynamic postalCode,
    dynamic city,
    dynamic taxCodePph21,
    dynamic npwpNumber,
    dynamic jpkNumber,
    String? bpjsEmpl,
    String? bpjsHealth,
    bool? medicalBenefit,
    String? aiaInsurance,
    bool? skckStatus,
    String? skckNumber,
    dynamic emergencyContactName,
    String? emergencyContactAddress,
    dynamic motherName,
    dynamic tShirtSize,
    dynamic shoesSize,
    dynamic trousersSize,
    dynamic emplNotes,
    int? basicSalary,
    String? kkNo,
    String? unitKerja,
    dynamic englishLevel,
    dynamic asalSekolah,
    dynamic kitasNo,
    dynamic kitasExp,
    dynamic passportNo,
    dynamic passportExp,
    dynamic simNo,
    dynamic simExpire,
    dynamic noKtp,
    dynamic coOrigin,
    dynamic handphone,
    dynamic emailAddress,
    DateTime? dueDate,
    dynamic confirmed,
    dynamic deptHead,
    dynamic deductions,
    dynamic spouseName,
    dynamic birthDaySpouse,
    dynamic the90DayConfirmation,
    String? level,
    dynamic levelValue,
    dynamic language2,
    dynamic extention,
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
    dynamic kota,
    dynamic telp1,
    dynamic tlp3,
    dynamic jmlAnak,
    dynamic busJemput,
    dynamic pengalamanKerja,
    dynamic perusahaanTerakhir,
    String? firstGrade,
    DateTime? lastContrac,
    dynamic lama,
    DateTime? datejoinNew,
    dynamic statusRecruitment,
    dynamic nilaiTunjangan,
    dynamic jenisTunjangan,
    dynamic noKartu,
    dynamic jamsostekDate,
    dynamic noRecruitment,
    dynamic pathJabatan,
    int? autono,
    dynamic pernyataan,
    dynamic kk,
    DateTime? dateRetire,
    String? marital,
    dynamic kodeMedical,
    dynamic jabatan,
    dynamic xAgama,
    dynamic xDivisi,
    dynamic xDepartemen,
    dynamic xBagian,
    dynamic lockerNo,
    dynamic noAia,
    dynamic tglAia,
    String? recStatus,
    dynamic noBpjskes,
    dynamic competencyRef,
    dynamic competencyDueDate,
    dynamic skckExpire,
    String? serikat,
    dynamic serikatExpDate,
    dynamic lockerDateTaken,
    dynamic lockerDateReturn,
    dynamic emrgcyRelation,
    int? celanaQty,
    int? sepatuQty,
    dynamic ukuranRok,
    int? rokQty,
    int? hemQty,
    String? password,
    bool? entitleMeal,
    dynamic altDept,
    dynamic emrgcyContactNamePhone3,
    int? noShift2,
  }) =>
      ViewMasterEmployeeListCompleteModel(
        emplId: emplId ?? this.emplId,
        altId: altId ?? this.altId,
        fingerId: fingerId ?? this.fingerId,
        employeeName: employeeName ?? this.employeeName,
        nickName: nickName ?? this.nickName,
        divisionId: divisionId ?? this.divisionId,
        division: division ?? this.division,
        departmentId: departmentId ?? this.departmentId,
        department: department ?? this.department,
        sectionId: sectionId ?? this.sectionId,
        section: section ?? this.section,
        positionId: positionId ?? this.positionId,
        position: position ?? this.position,
        genderId: genderId ?? this.genderId,
        gender: gender ?? this.gender,
        placeOfBirth: placeOfBirth ?? this.placeOfBirth,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        age: age ?? this.age,
        maritalId: maritalId ?? this.maritalId,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        emplStatusId: emplStatusId ?? this.emplStatusId,
        emplStatus: emplStatus ?? this.emplStatus,
        categoryId: categoryId ?? this.categoryId,
        category: category ?? this.category,
        levelId: levelId ?? this.levelId,
        levelDescription: levelDescription ?? this.levelDescription,
        levelGategory: levelGategory ?? this.levelGategory,
        resignation: resignation ?? this.resignation,
        resignationDate: resignationDate ?? this.resignationDate,
        resignationReason: resignationReason ?? this.resignationReason,
        hireBack: hireBack ?? this.hireBack,
        bloodType: bloodType ?? this.bloodType,
        religionId: religionId ?? this.religionId,
        religion: religion ?? this.religion,
        academicLevel: academicLevel ?? this.academicLevel,
        graduationYear: graduationYear ?? this.graduationYear,
        nonAcademic: nonAcademic ?? this.nonAcademic,
        hireDate: hireDate ?? this.hireDate,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        photoFile: photoFile ?? this.photoFile,
        idCard: idCard ?? this.idCard,
        idCardExpDate: idCardExpDate ?? this.idCardExpDate,
        personalEmail: personalEmail ?? this.personalEmail,
        companyEmail: companyEmail ?? this.companyEmail,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        mobilePhone1: mobilePhone1 ?? this.mobilePhone1,
        mobilePhone2: mobilePhone2 ?? this.mobilePhone2,
        address1: address1 ?? this.address1,
        address2: address2 ?? this.address2,
        emplOrigin: emplOrigin ?? this.emplOrigin,
        postalCode: postalCode ?? this.postalCode,
        city: city ?? this.city,
        taxCodePph21: taxCodePph21 ?? this.taxCodePph21,
        npwpNumber: npwpNumber ?? this.npwpNumber,
        jpkNumber: jpkNumber ?? this.jpkNumber,
        bpjsEmpl: bpjsEmpl ?? this.bpjsEmpl,
        bpjsHealth: bpjsHealth ?? this.bpjsHealth,
        medicalBenefit: medicalBenefit ?? this.medicalBenefit,
        aiaInsurance: aiaInsurance ?? this.aiaInsurance,
        skckStatus: skckStatus ?? this.skckStatus,
        skckNumber: skckNumber ?? this.skckNumber,
        emergencyContactName: emergencyContactName ?? this.emergencyContactName,
        emergencyContactAddress:
            emergencyContactAddress ?? this.emergencyContactAddress,
        motherName: motherName ?? this.motherName,
        tShirtSize: tShirtSize ?? this.tShirtSize,
        shoesSize: shoesSize ?? this.shoesSize,
        trousersSize: trousersSize ?? this.trousersSize,
        emplNotes: emplNotes ?? this.emplNotes,
        basicSalary: basicSalary ?? this.basicSalary,
        kkNo: kkNo ?? this.kkNo,
        unitKerja: unitKerja ?? this.unitKerja,
        englishLevel: englishLevel ?? this.englishLevel,
        asalSekolah: asalSekolah ?? this.asalSekolah,
        kitasNo: kitasNo ?? this.kitasNo,
        kitasExp: kitasExp ?? this.kitasExp,
        passportNo: passportNo ?? this.passportNo,
        passportExp: passportExp ?? this.passportExp,
        simNo: simNo ?? this.simNo,
        simExpire: simExpire ?? this.simExpire,
        noKtp: noKtp ?? this.noKtp,
        coOrigin: coOrigin ?? this.coOrigin,
        handphone: handphone ?? this.handphone,
        emailAddress: emailAddress ?? this.emailAddress,
        dueDate: dueDate ?? this.dueDate,
        confirmed: confirmed ?? this.confirmed,
        deptHead: deptHead ?? this.deptHead,
        deductions: deductions ?? this.deductions,
        spouseName: spouseName ?? this.spouseName,
        birthDaySpouse: birthDaySpouse ?? this.birthDaySpouse,
        the90DayConfirmation: the90DayConfirmation ?? this.the90DayConfirmation,
        level: level ?? this.level,
        levelValue: levelValue ?? this.levelValue,
        language2: language2 ?? this.language2,
        extention: extention ?? this.extention,
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
        kota: kota ?? this.kota,
        telp1: telp1 ?? this.telp1,
        tlp3: tlp3 ?? this.tlp3,
        jmlAnak: jmlAnak ?? this.jmlAnak,
        busJemput: busJemput ?? this.busJemput,
        pengalamanKerja: pengalamanKerja ?? this.pengalamanKerja,
        perusahaanTerakhir: perusahaanTerakhir ?? this.perusahaanTerakhir,
        firstGrade: firstGrade ?? this.firstGrade,
        lastContrac: lastContrac ?? this.lastContrac,
        lama: lama ?? this.lama,
        datejoinNew: datejoinNew ?? this.datejoinNew,
        statusRecruitment: statusRecruitment ?? this.statusRecruitment,
        nilaiTunjangan: nilaiTunjangan ?? this.nilaiTunjangan,
        jenisTunjangan: jenisTunjangan ?? this.jenisTunjangan,
        noKartu: noKartu ?? this.noKartu,
        jamsostekDate: jamsostekDate ?? this.jamsostekDate,
        noRecruitment: noRecruitment ?? this.noRecruitment,
        pathJabatan: pathJabatan ?? this.pathJabatan,
        autono: autono ?? this.autono,
        pernyataan: pernyataan ?? this.pernyataan,
        kk: kk ?? this.kk,
        dateRetire: dateRetire ?? this.dateRetire,
        marital: marital ?? this.marital,
        kodeMedical: kodeMedical ?? this.kodeMedical,
        jabatan: jabatan ?? this.jabatan,
        xAgama: xAgama ?? this.xAgama,
        xDivisi: xDivisi ?? this.xDivisi,
        xDepartemen: xDepartemen ?? this.xDepartemen,
        xBagian: xBagian ?? this.xBagian,
        lockerNo: lockerNo ?? this.lockerNo,
        noAia: noAia ?? this.noAia,
        tglAia: tglAia ?? this.tglAia,
        recStatus: recStatus ?? this.recStatus,
        noBpjskes: noBpjskes ?? this.noBpjskes,
        competencyRef: competencyRef ?? this.competencyRef,
        competencyDueDate: competencyDueDate ?? this.competencyDueDate,
        skckExpire: skckExpire ?? this.skckExpire,
        serikat: serikat ?? this.serikat,
        serikatExpDate: serikatExpDate ?? this.serikatExpDate,
        lockerDateTaken: lockerDateTaken ?? this.lockerDateTaken,
        lockerDateReturn: lockerDateReturn ?? this.lockerDateReturn,
        emrgcyRelation: emrgcyRelation ?? this.emrgcyRelation,
        celanaQty: celanaQty ?? this.celanaQty,
        sepatuQty: sepatuQty ?? this.sepatuQty,
        ukuranRok: ukuranRok ?? this.ukuranRok,
        rokQty: rokQty ?? this.rokQty,
        hemQty: hemQty ?? this.hemQty,
        password: password ?? this.password,
        entitleMeal: entitleMeal ?? this.entitleMeal,
        altDept: altDept ?? this.altDept,
        emrgcyContactNamePhone3:
            emrgcyContactNamePhone3 ?? this.emrgcyContactNamePhone3,
        noShift2: noShift2 ?? this.noShift2,
      );

  factory ViewMasterEmployeeListCompleteModel.fromRawJson(String str) =>
      ViewMasterEmployeeListCompleteModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewMasterEmployeeListCompleteModel.fromJson(
          Map<String, dynamic> json) =>
      ViewMasterEmployeeListCompleteModel(
        emplId: json["emplId"],
        altId: json["altId"],
        fingerId: json["fingerId"],
        employeeName: json["employeeName"],
        nickName: json["nickName"],
        divisionId: json["divisionId"],
        division: json["division"],
        departmentId: json["departmentId"],
        department: json["department"],
        sectionId: json["sectionId"],
        section: json["section"],
        positionId: json["positionId"],
        position: json["position"],
        genderId: json["genderId"],
        gender: json["gender"],
        placeOfBirth: json["placeOfBirth"],
        dateOfBirth: json["dateOfBirth"] == null
            ? null
            : DateTime.parse(json["dateOfBirth"]),
        age: json["age"],
        maritalId: json["maritalId"],
        maritalStatus: json["maritalStatus"],
        emplStatusId: json["emplStatusId"],
        emplStatus: json["emplStatus"],
        categoryId: json["categoryId"],
        category: json["category"],
        levelId: json["levelId"],
        levelDescription: json["levelDescription"],
        levelGategory: json["levelGategory"],
        resignation: json["resignation"],
        resignationDate: json["resignationDate"],
        resignationReason: json["resignationReason"],
        hireBack: json["hireBack"],
        bloodType: json["bloodType"],
        religionId: json["religionId"],
        religion: json["religion"],
        academicLevel: json["academicLevel"],
        graduationYear: json["graduationYear"],
        nonAcademic: json["nonAcademic"],
        hireDate:
            json["hireDate"] == null ? null : DateTime.parse(json["hireDate"]),
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        photoFile: json["photoFile"],
        idCard: json["idCard"],
        idCardExpDate: json["idCardExpDate"] == null
            ? null
            : DateTime.parse(json["idCardExpDate"]),
        personalEmail: json["personalEmail"],
        companyEmail: json["companyEmail"],
        phoneNumber: json["phoneNumber"],
        mobilePhone1: json["mobilePhone1"],
        mobilePhone2: json["mobilePhone2"],
        address1: json["address1"],
        address2: json["address2"],
        emplOrigin: json["emplOrigin"],
        postalCode: json["postalCode"],
        city: json["city"],
        taxCodePph21: json["taxCodePph21"],
        npwpNumber: json["npwpNumber"],
        jpkNumber: json["jpkNumber"],
        bpjsEmpl: json["bpjsEmpl"],
        bpjsHealth: json["bpjsHealth"],
        medicalBenefit: json["medicalBenefit"],
        aiaInsurance: json["aiaInsurance"],
        skckStatus: json["skckStatus"],
        skckNumber: json["skckNumber"],
        emergencyContactName: json["emergencyContactName"],
        emergencyContactAddress: json["emergencyContactAddress"],
        motherName: json["motherName"],
        tShirtSize: json["tShirtSize"],
        shoesSize: json["shoesSize"],
        trousersSize: json["trousersSize"],
        emplNotes: json["emplNotes"],
        basicSalary: json["basicSalary"],
        kkNo: json["kkNo"],
        unitKerja: json["unitKerja"],
        englishLevel: json["englishLevel"],
        asalSekolah: json["asalSekolah"],
        kitasNo: json["kitasNo"],
        kitasExp: json["kitasExp"],
        passportNo: json["passportNo"],
        passportExp: json["passportExp"],
        simNo: json["simNo"],
        simExpire: json["simExpire"],
        noKtp: json["noKtp"],
        coOrigin: json["coOrigin"],
        handphone: json["handphone"],
        emailAddress: json["emailAddress"],
        dueDate:
            json["dueDate"] == null ? null : DateTime.parse(json["dueDate"]),
        confirmed: json["confirmed"],
        deptHead: json["deptHead"],
        deductions: json["deductions"],
        spouseName: json["spouseName"],
        birthDaySpouse: json["birthDaySpouse"],
        the90DayConfirmation: json["_90DayConfirmation"],
        level: json["level"],
        levelValue: json["levelValue"],
        language2: json["language2"],
        extention: json["extention"],
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
        kota: json["kota"],
        telp1: json["telp1"],
        tlp3: json["tlp3"],
        jmlAnak: json["jmlAnak"],
        busJemput: json["busJemput"],
        pengalamanKerja: json["pengalamanKerja"],
        perusahaanTerakhir: json["perusahaanTerakhir"],
        firstGrade: json["firstGrade"],
        lastContrac: json["lastContrac"] == null
            ? null
            : DateTime.parse(json["lastContrac"]),
        lama: json["lama"],
        datejoinNew: json["datejoinNew"] == null
            ? null
            : DateTime.parse(json["datejoinNew"]),
        statusRecruitment: json["statusRecruitment"],
        nilaiTunjangan: json["nilaiTunjangan"],
        jenisTunjangan: json["jenisTunjangan"],
        noKartu: json["noKartu"],
        jamsostekDate: json["jamsostekDate"],
        noRecruitment: json["noRecruitment"],
        pathJabatan: json["pathJabatan"],
        autono: json["autono"],
        pernyataan: json["pernyataan"],
        kk: json["kk"],
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
        lockerNo: json["lockerNo"],
        noAia: json["noAia"],
        tglAia: json["tglAia"],
        recStatus: json["recStatus"],
        noBpjskes: json["noBpjskes"],
        competencyRef: json["competencyRef"],
        competencyDueDate: json["competencyDueDate"],
        skckExpire: json["skckExpire"],
        serikat: json["serikat"],
        serikatExpDate: json["serikatExpDate"],
        lockerDateTaken: json["lockerDateTaken"],
        lockerDateReturn: json["lockerDateReturn"],
        emrgcyRelation: json["emrgcyRelation"],
        celanaQty: json["celanaQty"],
        sepatuQty: json["sepatuQty"],
        ukuranRok: json["ukuranRok"],
        rokQty: json["rokQty"],
        hemQty: json["hemQty"],
        password: json["password"],
        entitleMeal: json["entitleMeal"],
        altDept: json["altDept"],
        emrgcyContactNamePhone3: json["emrgcyContactNamePhone3"],
        noShift2: json["noShift2"],
      );

  Map<String, dynamic> toJson() => {
        "emplId": emplId,
        "altId": altId,
        "fingerId": fingerId,
        "employeeName": employeeName,
        "nickName": nickName,
        "divisionId": divisionId,
        "division": division,
        "departmentId": departmentId,
        "department": department,
        "sectionId": sectionId,
        "section": section,
        "positionId": positionId,
        "position": position,
        "genderId": genderId,
        "gender": gender,
        "placeOfBirth": placeOfBirth,
        "dateOfBirth": dateOfBirth?.toIso8601String(),
        "age": age,
        "maritalId": maritalId,
        "maritalStatus": maritalStatus,
        "emplStatusId": emplStatusId,
        "emplStatus": emplStatus,
        "categoryId": categoryId,
        "category": category,
        "levelId": levelId,
        "levelDescription": levelDescription,
        "levelGategory": levelGategory,
        "resignation": resignation,
        "resignationDate": resignationDate,
        "resignationReason": resignationReason,
        "hireBack": hireBack,
        "bloodType": bloodType,
        "religionId": religionId,
        "religion": religion,
        "academicLevel": academicLevel,
        "graduationYear": graduationYear,
        "nonAcademic": nonAcademic,
        "hireDate": hireDate?.toIso8601String(),
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "photoFile": photoFile,
        "idCard": idCard,
        "idCardExpDate": idCardExpDate?.toIso8601String(),
        "personalEmail": personalEmail,
        "companyEmail": companyEmail,
        "phoneNumber": phoneNumber,
        "mobilePhone1": mobilePhone1,
        "mobilePhone2": mobilePhone2,
        "address1": address1,
        "address2": address2,
        "emplOrigin": emplOrigin,
        "postalCode": postalCode,
        "city": city,
        "taxCodePph21": taxCodePph21,
        "npwpNumber": npwpNumber,
        "jpkNumber": jpkNumber,
        "bpjsEmpl": bpjsEmpl,
        "bpjsHealth": bpjsHealth,
        "medicalBenefit": medicalBenefit,
        "aiaInsurance": aiaInsurance,
        "skckStatus": skckStatus,
        "skckNumber": skckNumber,
        "emergencyContactName": emergencyContactName,
        "emergencyContactAddress": emergencyContactAddress,
        "motherName": motherName,
        "tShirtSize": tShirtSize,
        "shoesSize": shoesSize,
        "trousersSize": trousersSize,
        "emplNotes": emplNotes,
        "basicSalary": basicSalary,
        "kkNo": kkNo,
        "unitKerja": unitKerja,
        "englishLevel": englishLevel,
        "asalSekolah": asalSekolah,
        "kitasNo": kitasNo,
        "kitasExp": kitasExp,
        "passportNo": passportNo,
        "passportExp": passportExp,
        "simNo": simNo,
        "simExpire": simExpire,
        "noKtp": noKtp,
        "coOrigin": coOrigin,
        "handphone": handphone,
        "emailAddress": emailAddress,
        "dueDate": dueDate?.toIso8601String(),
        "confirmed": confirmed,
        "deptHead": deptHead,
        "deductions": deductions,
        "spouseName": spouseName,
        "birthDaySpouse": birthDaySpouse,
        "_90DayConfirmation": the90DayConfirmation,
        "level": level,
        "levelValue": levelValue,
        "language2": language2,
        "extention": extention,
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
        "kota": kota,
        "telp1": telp1,
        "tlp3": tlp3,
        "jmlAnak": jmlAnak,
        "busJemput": busJemput,
        "pengalamanKerja": pengalamanKerja,
        "perusahaanTerakhir": perusahaanTerakhir,
        "firstGrade": firstGrade,
        "lastContrac": lastContrac?.toIso8601String(),
        "lama": lama,
        "datejoinNew": datejoinNew?.toIso8601String(),
        "statusRecruitment": statusRecruitment,
        "nilaiTunjangan": nilaiTunjangan,
        "jenisTunjangan": jenisTunjangan,
        "noKartu": noKartu,
        "jamsostekDate": jamsostekDate,
        "noRecruitment": noRecruitment,
        "pathJabatan": pathJabatan,
        "autono": autono,
        "pernyataan": pernyataan,
        "kk": kk,
        "dateRetire": dateRetire?.toIso8601String(),
        "marital": marital,
        "kodeMedical": kodeMedical,
        "jabatan": jabatan,
        "xAgama": xAgama,
        "xDivisi": xDivisi,
        "xDepartemen": xDepartemen,
        "xBagian": xBagian,
        "lockerNo": lockerNo,
        "noAia": noAia,
        "tglAia": tglAia,
        "recStatus": recStatus,
        "noBpjskes": noBpjskes,
        "competencyRef": competencyRef,
        "competencyDueDate": competencyDueDate,
        "skckExpire": skckExpire,
        "serikat": serikat,
        "serikatExpDate": serikatExpDate,
        "lockerDateTaken": lockerDateTaken,
        "lockerDateReturn": lockerDateReturn,
        "emrgcyRelation": emrgcyRelation,
        "celanaQty": celanaQty,
        "sepatuQty": sepatuQty,
        "ukuranRok": ukuranRok,
        "rokQty": rokQty,
        "hemQty": hemQty,
        "password": password,
        "entitleMeal": entitleMeal,
        "altDept": altDept,
        "emrgcyContactNamePhone3": emrgcyContactNamePhone3,
        "noShift2": noShift2,
      };
}
