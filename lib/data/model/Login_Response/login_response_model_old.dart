import 'dart:convert';

class LoginResponseModelOld {
  final String accessToken;
  final String refreshToken;

  LoginResponseModelOld({
    required this.accessToken,
    required this.refreshToken,
  });

  LoginResponseModelOld copyWith({
    String? accessToken,
    String? refreshToken,
  }) =>
      LoginResponseModelOld(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
      );

  factory LoginResponseModelOld.fromRawJson(String str) =>
      LoginResponseModelOld.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponseModelOld.fromJson(Map<String, dynamic> json) =>
      LoginResponseModelOld(
        accessToken: json["access_token"],
        refreshToken: json["refresh_token"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "refresh_token": refreshToken,
      };
}
