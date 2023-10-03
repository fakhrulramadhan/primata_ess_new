import 'dart:convert';

class LoginUserRequestModel {
  final String id;
  LoginUserRequestModel({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
    };
  }

  factory LoginUserRequestModel.fromMap(Map<String, dynamic> map) {
    return LoginUserRequestModel(
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginUserRequestModel.fromJson(String source) =>
      LoginUserRequestModel.fromMap(json.decode(source));
}
