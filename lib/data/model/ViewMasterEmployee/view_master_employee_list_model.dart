import 'dart:convert';

class ViewMasterEmployeeListModel {
  final String? emplId;
  final String? nickName;
  final String? employeeName;
  final String? position;

  ViewMasterEmployeeListModel({
    this.emplId,
    this.nickName,
    this.employeeName,
    this.position,
  });

  ViewMasterEmployeeListModel copyWith({
    String? emplId,
    String? nickName,
    String? employeeName,
    String? position,
  }) =>
      ViewMasterEmployeeListModel(
        emplId: emplId ?? this.emplId,
        nickName: nickName ?? this.nickName,
        employeeName: employeeName ?? this.employeeName,
        position: position ?? this.position,
      );

  factory ViewMasterEmployeeListModel.fromRawJson(String str) =>
      ViewMasterEmployeeListModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewMasterEmployeeListModel.fromJson(Map<String, dynamic> json) =>
      ViewMasterEmployeeListModel(
        emplId: json["emplId"],
        nickName: json["nickName"],
        employeeName: json["employeeName"],
        position: json["position"],
      );

  Map<String, dynamic> toJson() => {
        "emplId": emplId,
        "nickName": nickName,
        "employeeName": employeeName,
        "position": position,
      };
}
