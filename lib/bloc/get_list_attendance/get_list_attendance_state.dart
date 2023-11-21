part of 'get_list_attendance_bloc.dart';

abstract class GetListAttandanceState {}

class GetListAttandanceStateInitial extends GetListAttandanceState {}

class GetListAttandanceStateLoading extends GetListAttandanceState {}

class GetListAttandanceStateLoaded extends GetListAttandanceState {
  List<ViewTransJadwalShiftWebModel> data;

  GetListAttandanceStateLoaded({required this.data});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetListAttandanceStateLoaded && other.data == data;
  }

  @override
  int get hashCode => data.hashCode;
}

class GetListAttandanceStateError extends GetListAttandanceState {}
