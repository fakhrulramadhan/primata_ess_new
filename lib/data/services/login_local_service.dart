import 'dart:convert';

import 'package:primata_ess_new/data/model/Login_Response/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginLocalService {
  Future<bool> saveAuthData(LoginResponseModel model) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final result = await pref.setString('auth', jsonEncode(model.toJson()));
    return result;
  }

  Future<bool> removeAuthData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove('auth');
  }

  Future<String> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    final authData = LoginResponseModel.fromJson(jsonDecode(authJson));
    return authData.token;
  }

  Future<LoginResponseModel> getAuthData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    final authData = LoginResponseModel.fromJson(jsonDecode(authJson));
    return authData;
  }

  // Future<User> getUser() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   final authJson = pref.getString('auth') ?? '';
  //   final authData = LoginResponseModel.fromJson(jsonDecode(authJson));
  //   return authData.user;
  // }

  // Future<int> getUserId() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   final authJson = pref.getString('auth') ?? '';
  //   final authData = LoginResponseModel.fromJson(jsonDecode(authJson));
  //   return authData.user.id;
  // }

  Future<bool> isLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth');
    return authJson != null;
  }
}
