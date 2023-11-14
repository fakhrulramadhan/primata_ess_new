import 'package:bloc/bloc.dart';
import '../../data/services/Absensi_In/absensi_In_service.dart';
import '../../data/model/Absensi_In_Out/get_history_absensi_offline_transfers_model.dart';

part 'get_history_absensi_in_event.dart';
part 'get_history_absensi_in_state.dart';

class GetHistoryAbsensiInBloc
    extends Bloc<GetHistoryAbsensiInEvent, GetHistoryAbsensiInState> {
  final AbsensiInService service;
  GetHistoryAbsensiInBloc(this.service)
      : super(GetHistoryAbsensiInStateInitial()) {
    on<GetHistoryAbsensiInEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<DoGetHistoryAbsensiEvent>((event, emit) async {
      emit(GetHistoryAbsensiInStateLoading());

      final result = await service.getHistoryAbsensiIn();
      result.fold((l) => emit(GetHistoryAbsensiInStateError()),
          (r) => GetHistoryAbsensiInStateLoaded(data: r));
    });
  }
}
