import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:primata_ess_new/data/services/Absensi_In/history_absensi_offline_transfers_service.dart';

import '../../data/model/Absensi_In_Out/history_absensi_offline_transfers_model.dart';

part 'history_absensi_offline_transfer_event.dart';
part 'history_absensi_offline_transfer_state.dart';

class HistoryAbsensiOfflineTransferBloc extends Bloc<
    HistoryAbsensiOfflineTransferEvent, HistoryAbsensiOfflineTransferState> {
  final HistoryAbsensiOfflineTransferService service;
  HistoryAbsensiOfflineTransferBloc(this.service)
      : super(HistoryAbsensiOfflineTransferInitial()) {
    on<HistoryAbsensiOfflineTransferEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<AddHistoryAbsensiOfflineTransferEvent>((event, emit) async {
      // TODO: implement event handler
      emit(HistoryAbsensiOfflineTransferLoading());

      final result = await service.addHistory(event.data);
      result.fold((l) => emit(HistoryAbsensiOfflineTransferError()),
          (r) => emit(HistoryAbsensiOfflineTransferLoaded(data: r)));
    });
  }
}
