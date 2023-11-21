import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/services/ViewTransJadwalShiftWeb/view_trans_jadwal_shift_web_attendance.dart';
import '../../data/model/VIewTrans/view_trans_jadwal_shift_web_model.dart';

part 'get_list_attendance_event.dart';
part 'get_list_attendance_state.dart';

class GetListAttendanceBloc
    extends Bloc<GetListAttandanceEvent, GetListAttandanceState> {
  ViewTransJadwalShiftWebAttendanceService service;
  GetListAttendanceBloc(this.service) : super(GetListAttandanceStateInitial()) {
    on<GetListAttandanceEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<DoGetListAttandanceStateEvent>((event, emit) async {
      emit(GetListAttandanceStateLoading());

      final result = await service.getListAttendance();

      result.fold((l) => emit(GetListAttandanceStateError()),
          (r) => emit(GetListAttandanceStateLoaded(data: r)));
    });
  }
}
