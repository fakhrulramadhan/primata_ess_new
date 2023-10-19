import 'dart:convert';

class LoginResponseModel {
  final String token;

  LoginResponseModel({
    required this.token,
  });

  LoginResponseModel copyWith({
    String? token,
  }) =>
      LoginResponseModel(
        token: token ?? this.token,
      );

  factory LoginResponseModel.fromRawJson(String str) =>
      LoginResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
