part of 'get_view_master_employee_bloc.dart';

abstract class GetViewMasterEmployeeState {}

class GetViewMasterEmployeeInitial extends GetViewMasterEmployeeState {}

class GetViewMasterEmployeeLoading extends GetViewMasterEmployeeState {}

class GetViewMasterEmployeeLoaded extends GetViewMasterEmployeeState {
  ViewMasterEmployeeListModel data;
  GetViewMasterEmployeeLoaded({
    required this.data,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetViewMasterEmployeeLoaded && other.data == data;
  }

  @override
  int get hashCode => data.hashCode;
}

class GetViewMasterEmployeeError extends GetViewMasterEmployeeState {}
