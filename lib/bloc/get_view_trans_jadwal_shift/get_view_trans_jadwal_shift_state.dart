part of 'get_view_trans_jadwal_shift_bloc.dart';

abstract class GetViewTransJadwalShiftState {}

class GetViewTransJadwalShiftStateInitial
    extends GetViewTransJadwalShiftState {}

class GetViewTransJadwalShiftStateLoading
    extends GetViewTransJadwalShiftState {}

class GetViewTransJadwalShiftStateLoaded extends GetViewTransJadwalShiftState {
  List<ViewTransJadwalShiftWebModel> data;

  GetViewTransJadwalShiftStateLoaded({
    required this.data,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetViewTransJadwalShiftStateLoaded && other.data == data;
  }

  @override
  int get hashCode => data.hashCode;
}

class GetViewTransJadwalShiftStateError extends GetViewTransJadwalShiftState {}
