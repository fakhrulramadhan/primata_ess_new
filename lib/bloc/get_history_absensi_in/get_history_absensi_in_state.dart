part of 'get_history_absensi_in_bloc.dart';

abstract class GetHistoryAbsensiInState {}

class GetHistoryAbsensiInStateInitial extends GetHistoryAbsensiInState {}

class GetHistoryAbsensiInStateLoading extends GetHistoryAbsensiInState {}

class GetHistoryAbsensiInStateLoaded extends GetHistoryAbsensiInState {
  List<GetHistoryAbsensiTransfersModel> data;
  GetHistoryAbsensiInStateLoaded({
    required this.data,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetHistoryAbsensiInStateLoaded && other.data == data;
  }

  @override
  int get hashCode => data.hashCode;
}

class GetHistoryAbsensiInStateError extends GetHistoryAbsensiInState {}
