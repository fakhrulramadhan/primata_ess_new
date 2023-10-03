import 'dart:convert';

class MenuUsersModel {
  final String? user;
  final String? standardMenu;
  final String? pinid;
  final int? statusUser;
  final dynamic emailAddress;
  final bool? tabPayroll;
  final String? kodeDepartment;
  final String? schedulePeriod;
  final dynamic scheduleDepartment;
  final bool? employeeRight;
  final int? id;
  final bool? scheduleRight;
  final bool? rightExtraDo;
  final bool? rightOt;
  final bool? rightImt;
  final bool? rightTm;
  final dynamic shiftOptionCol;
  final String? userName;
  final String? userPwd;
  final dynamic loginStatus;
  final dynamic loginAutoNo;
  final dynamic loginTime;
  final String? token;

  MenuUsersModel({
    this.user,
    this.standardMenu,
    this.pinid,
    this.statusUser,
    this.emailAddress,
    this.tabPayroll,
    this.kodeDepartment,
    this.schedulePeriod,
    this.scheduleDepartment,
    this.employeeRight,
    this.id,
    this.scheduleRight,
    this.rightExtraDo,
    this.rightOt,
    this.rightImt,
    this.rightTm,
    this.shiftOptionCol,
    this.userName,
    this.userPwd,
    this.loginStatus,
    this.loginAutoNo,
    this.loginTime,
    this.token,
  });

  MenuUsersModel copyWith({
    String? user,
    String? standardMenu,
    String? pinid,
    int? statusUser,
    dynamic emailAddress,
    bool? tabPayroll,
    String? kodeDepartment,
    String? schedulePeriod,
    dynamic scheduleDepartment,
    bool? employeeRight,
    int? id,
    bool? scheduleRight,
    bool? rightExtraDo,
    bool? rightOt,
    bool? rightImt,
    bool? rightTm,
    dynamic shiftOptionCol,
    String? userName,
    String? userPwd,
    dynamic loginStatus,
    dynamic loginAutoNo,
    dynamic loginTime,
    String? token,
  }) =>
      MenuUsersModel(
        user: user ?? this.user,
        standardMenu: standardMenu ?? this.standardMenu,
        pinid: pinid ?? this.pinid,
        statusUser: statusUser ?? this.statusUser,
        emailAddress: emailAddress ?? this.emailAddress,
        tabPayroll: tabPayroll ?? this.tabPayroll,
        kodeDepartment: kodeDepartment ?? this.kodeDepartment,
        schedulePeriod: schedulePeriod ?? this.schedulePeriod,
        scheduleDepartment: scheduleDepartment ?? this.scheduleDepartment,
        employeeRight: employeeRight ?? this.employeeRight,
        id: id ?? this.id,
        scheduleRight: scheduleRight ?? this.scheduleRight,
        rightExtraDo: rightExtraDo ?? this.rightExtraDo,
        rightOt: rightOt ?? this.rightOt,
        rightImt: rightImt ?? this.rightImt,
        rightTm: rightTm ?? this.rightTm,
        shiftOptionCol: shiftOptionCol ?? this.shiftOptionCol,
        userName: userName ?? this.userName,
        userPwd: userPwd ?? this.userPwd,
        loginStatus: loginStatus ?? this.loginStatus,
        loginAutoNo: loginAutoNo ?? this.loginAutoNo,
        loginTime: loginTime ?? this.loginTime,
        token: token ?? this.token,
      );

  factory MenuUsersModel.fromRawJson(String str) =>
      MenuUsersModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuUsersModel.fromJson(Map<String, dynamic> json) => MenuUsersModel(
        user: json["user"],
        standardMenu: json["standardMenu"],
        pinid: json["pinid"],
        statusUser: json["statusUser"],
        emailAddress: json["emailAddress"],
        tabPayroll: json["tabPayroll"],
        kodeDepartment: json["kodeDepartment"],
        schedulePeriod: json["schedulePeriod"],
        scheduleDepartment: json["scheduleDepartment"],
        employeeRight: json["employeeRight"],
        id: json["id"],
        scheduleRight: json["scheduleRight"],
        rightExtraDo: json["rightExtraDo"],
        rightOt: json["rightOt"],
        rightImt: json["rightImt"],
        rightTm: json["rightTm"],
        shiftOptionCol: json["shiftOptionCol"],
        userName: json["userName"],
        userPwd: json["userPwd"],
        loginStatus: json["loginStatus"],
        loginAutoNo: json["loginAutoNo"],
        loginTime: json["loginTime"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "standardMenu": standardMenu,
        "pinid": pinid,
        "statusUser": statusUser,
        "emailAddress": emailAddress,
        "tabPayroll": tabPayroll,
        "kodeDepartment": kodeDepartment,
        "schedulePeriod": schedulePeriod,
        "scheduleDepartment": scheduleDepartment,
        "employeeRight": employeeRight,
        "id": id,
        "scheduleRight": scheduleRight,
        "rightExtraDo": rightExtraDo,
        "rightOt": rightOt,
        "rightImt": rightImt,
        "rightTm": rightTm,
        "shiftOptionCol": shiftOptionCol,
        "userName": userName,
        "userPwd": userPwd,
        "loginStatus": loginStatus,
        "loginAutoNo": loginAutoNo,
        "loginTime": loginTime,
        "token": token,
      };
}
