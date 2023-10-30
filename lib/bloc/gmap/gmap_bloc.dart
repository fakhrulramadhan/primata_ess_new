// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:primata_ess_new/data/model/Gmap/gmap_model.dart';
// import '../../data/services/Gmap/gmap_service.dart';

// part 'gmap_event.dart';
// part 'gmap_state.dart';
// part 'gmap_bloc.freezed.dart';

// class GmapBloc extends Bloc<GmapEvent, GmapState> {
//   final GmapService datasource;
//   GmapBloc(
//     this.datasource,
//   ) : super(const _Initial()) {
//     on<_GetCurrentLocation>((event, emit) async {
//       emit(const _Loading());
//       final result = await datasource.getCurrentPosition();
//       result.fold(
//         (l) => emit(_Error(l)),
//         (r) => emit(_Loaded(r)),
//       );
//     });

//     on<_GetSelectPosition>((event, emit) async {
//       emit(const _Loading());
//       final result = await datasource.getPosition(
//         lat: event.lat,
//         long: event.lat,
//       );
//       result.fold(
//         (l) => emit(_Error(l)),
//         (r) => emit(_Loaded(r)),
//       );
//     });
//   }
// }
