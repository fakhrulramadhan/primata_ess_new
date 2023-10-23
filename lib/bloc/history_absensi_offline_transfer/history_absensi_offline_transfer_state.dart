part of 'history_absensi_offline_transfer_bloc.dart';

abstract class HistoryAbsensiOfflineTransferState {}

class HistoryAbsensiOfflineTransferInitial
    extends HistoryAbsensiOfflineTransferState {}

class HistoryAbsensiOfflineTransferLoading
    extends HistoryAbsensiOfflineTransferState {}

class HistoryAbsensiOfflineTransferLoaded
    extends HistoryAbsensiOfflineTransferState {
  HistoryAbsensiOfflineTransferModel data;
  HistoryAbsensiOfflineTransferLoaded({
    required this.data,
  });

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is HistoryAbsensiOfflineTransferLoaded && other.data == data;
  // }

  // @override
  // int get hashCode => data.hashCode;
}

class HistoryAbsensiOfflineTransferError
    extends HistoryAbsensiOfflineTransferState {}
