part of 'get_view_master_employee_profile_bloc.dart';

abstract class GetViewMasterEmployeeProfileState {}

class GetViewMasterEmployeeProfileInitial
    extends GetViewMasterEmployeeProfileState {}

class GetViewMasterEmployeeProfileLoading
    extends GetViewMasterEmployeeProfileState {}

class GetViewMasterEmployeeProfileLoaded
    extends GetViewMasterEmployeeProfileState {
  ViewMasterEmployeeProfileModel data;
  GetViewMasterEmployeeProfileLoaded({
    required this.data,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetViewMasterEmployeeProfileLoaded && other.data == data;
  }

  @override
  int get hashCode => data.hashCode;
}

class GetViewMasterEmployeeProfileError
    extends GetViewMasterEmployeeProfileState {}
