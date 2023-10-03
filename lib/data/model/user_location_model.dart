import 'dart:convert';

class UserLocationModel {
  final double? latitude;
  final double? longitude;

  UserLocationModel({
    this.latitude,
    this.longitude,
  });

  UserLocationModel copyWith({
    double? latitude,
    double? longitude,
  }) =>
      UserLocationModel(
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );

  factory UserLocationModel.fromRawJson(String str) =>
      UserLocationModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserLocationModel.fromJson(Map<String, dynamic> json) =>
      UserLocationModel(
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
      };
}
