import 'dart:convert';

class LoginRequestModel {
  final String email;
  final String password;

  LoginRequestModel({
    required this.email,
    required this.password,
  });

  LoginRequestModel copyWith({
    String? email,
    String? password,
  }) =>
      LoginRequestModel(
        email: email ?? this.email,
        password: password ?? this.password,
      );

  factory LoginRequestModel.fromRawJson(String str) =>
      LoginRequestModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      LoginRequestModel(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
