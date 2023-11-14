part of 'get_list_leave_summary_bloc.dart';

abstract class GetListLeaveSummaryState {}

class GetListLeaveSummaryStateInitial extends GetListLeaveSummaryState {}

class GetListLeaveSummaryStateLoading extends GetListLeaveSummaryState {}

class GetListLeaveSummaryStateLoaded extends GetListLeaveSummaryState {
  List<ViewLeaveSummaryAllModel> data;

  GetListLeaveSummaryStateLoaded({
    required this.data,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetListLeaveSummaryStateLoaded && other.data == data;
  }

  @override
  int get hashCode => data.hashCode;
}

class GetListLeaveSummaryStateError extends GetListLeaveSummaryState {}
