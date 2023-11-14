part of 'get_leave_detail_bloc.dart';

abstract class GetLeaveDetailState {}

class GetLeaveDetailStateInitial extends GetLeaveDetailState {}

class GetLeaveDetailStateLoading extends GetLeaveDetailState {}

class GetLeaveDetailStateLoaded extends GetLeaveDetailState {
  List<TransLeavesModel> data;

  GetLeaveDetailStateLoaded({required this.data});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetLeaveDetailStateLoaded && other.data == data;
  }

  @override
  int get hashCode => data.hashCode;
}

class GetLeaveDetailStateError extends GetLeaveDetailState {}
