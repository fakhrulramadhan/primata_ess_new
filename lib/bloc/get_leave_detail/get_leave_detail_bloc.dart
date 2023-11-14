import 'package:bloc/bloc.dart';
import '../../data/services/Leave/trans_leave_service.dart';
import '../../data/model/Leave/trans_leaves_model.dart';

part 'get_leave_detail_event.dart';
part 'get_leave_detail_state.dart';

class GetLeaveDetailBloc
    extends Bloc<GetLeaveDetailEvent, GetLeaveDetailState> {
  final TransLeaveService service;
  GetLeaveDetailBloc(this.service) : super(GetLeaveDetailStateInitial()) {
    on<GetLeaveDetailEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<DoGetLeaveDetailEvent>((event, emit) async {
      emit(GetLeaveDetailStateLoading());

      final result = await service.getLeaveDetail();

      result.fold((l) => emit(GetLeaveDetailStateError()),
          (r) => emit(GetLeaveDetailStateLoaded(data: r)));
    });
  }
}
