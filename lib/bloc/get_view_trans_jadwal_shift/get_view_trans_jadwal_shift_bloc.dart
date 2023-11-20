import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/services/ViewTransJadwalShiftWeb/view_trans_jadwal_shift_web_schedule_service.dart';

import '../../data/model/VIewTrans/view_trans_jadwal_shift_web_model.dart';

part 'get_view_trans_jadwal_shift_event.dart';
part 'get_view_trans_jadwal_shift_state.dart';

class GetViewTransJadwalShiftBloc
    extends Bloc<GetViewTransJadwalShiftEvent, GetViewTransJadwalShiftState> {
  final ViewTransJadwalShiftWebScheduleService service;
  GetViewTransJadwalShiftBloc(this.service)
      : super(GetViewTransJadwalShiftStateInitial()) {
    on<GetViewTransJadwalShiftEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<DoGetViewTransJadwalShiftEvent>((event, emit) async {
      emit(GetViewTransJadwalShiftStateLoading());

      final result = await service.getListSchedule();

      result.fold((l) => emit(GetViewTransJadwalShiftStateError()),
          (r) => GetViewTransJadwalShiftStateLoaded(data: r));
    });
  }
}
