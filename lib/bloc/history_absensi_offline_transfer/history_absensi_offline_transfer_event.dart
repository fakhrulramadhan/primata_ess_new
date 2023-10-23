part of 'history_absensi_offline_transfer_bloc.dart';

abstract class HistoryAbsensiOfflineTransferEvent {}

class AddHistoryAbsensiOfflineTransferEvent
    extends HistoryAbsensiOfflineTransferEvent {
  HistoryAbsensiOfflineTransferModel data;
  AddHistoryAbsensiOfflineTransferEvent({
    required this.data,
  });
}
