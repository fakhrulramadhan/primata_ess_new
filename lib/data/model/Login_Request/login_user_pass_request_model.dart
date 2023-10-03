import 'dart:convert';

class LoginUserPassRequestModel {
  final String id;
  final String pass;
  LoginUserPassRequestModel({
    required this.id,
    required this.pass,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'pass': pass,
    };
  }

  factory LoginUserPassRequestModel.fromMap(Map<String, dynamic> map) {
    return LoginUserPassRequestModel(
      id: map['id'] ?? '',
      pass: map['pass'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginUserPassRequestModel.fromJson(String source) =>
      LoginUserPassRequestModel.fromMap(json.decode(source));
}
