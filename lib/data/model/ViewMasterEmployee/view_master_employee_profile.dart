import 'dart:convert';

class ViewMasterEmployeeProfileModel {
  final String? emplId;
  final String? employeeName;
  final String? division;
  final String? department;
  final String? position;
  final String? category;
  final String? levelDescription;
  final String? placeOfBirth;
  final DateTime? dateOfBirth;
  final DateTime? dateRetire;
  final String? unitKerja;
  final String? levelId;

  ViewMasterEmployeeProfileModel({
    this.emplId,
    this.employeeName,
    this.division,
    this.department,
    this.position,
    this.category,
    this.levelDescription,
    this.placeOfBirth,
    this.dateOfBirth,
    this.dateRetire,
    this.unitKerja,
    this.levelId,
  });

  ViewMasterEmployeeProfileModel copyWith({
    String? emplId,
    String? employeeName,
    String? division,
    String? department,
    String? position,
    String? category,
    String? levelDescription,
    String? placeOfBirth,
    DateTime? dateOfBirth,
    DateTime? dateRetire,
    String? unitKerja,
    String? levelId,
  }) =>
      ViewMasterEmployeeProfileModel(
        emplId: emplId ?? this.emplId,
        employeeName: employeeName ?? this.employeeName,
        division: division ?? this.division,
        department: department ?? this.department,
        position: position ?? this.position,
        category: category ?? this.category,
        levelDescription: levelDescription ?? this.levelDescription,
        placeOfBirth: placeOfBirth ?? this.placeOfBirth,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        dateRetire: dateRetire ?? this.dateRetire,
        unitKerja: unitKerja ?? this.unitKerja,
        levelId: levelId ?? this.levelId,
      );

  factory ViewMasterEmployeeProfileModel.fromRawJson(String str) =>
      ViewMasterEmployeeProfileModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewMasterEmployeeProfileModel.fromJson(Map<String, dynamic> json) =>
      ViewMasterEmployeeProfileModel(
        emplId: json["emplId"],
        employeeName: json["employeeName"],
        division: json["division"],
        department: json["department"],
        position: json["position"],
        category: json["category"],
        levelDescription: json["levelDescription"],
        placeOfBirth: json["placeOfBirth"],
        dateOfBirth: json["dateOfBirth"] == null
            ? null
            : DateTime.parse(json["dateOfBirth"]),
        dateRetire: json["dateRetire"] == null
            ? null
            : DateTime.parse(json["dateRetire"]),
        unitKerja: json["unitKerja"],
        levelId: json["levelId"],
      );

  Map<String, dynamic> toJson() => {
        "emplId": emplId,
        "employeeName": employeeName,
        "division": division,
        "department": department,
        "position": position,
        "category": category,
        "levelDescription": levelDescription,
        "placeOfBirth": placeOfBirth,
        "dateOfBirth":
            "${dateOfBirth!.year.toString().padLeft(4, '0')}-${dateOfBirth!.month.toString().padLeft(2, '0')}-${dateOfBirth!.day.toString().padLeft(2, '0')}",
        "dateRetire":
            "${dateRetire!.year.toString().padLeft(4, '0')}-${dateRetire!.month.toString().padLeft(2, '0')}-${dateRetire!.day.toString().padLeft(2, '0')}",
        "unitKerja": unitKerja,
        "levelId": levelId,
      };
}
