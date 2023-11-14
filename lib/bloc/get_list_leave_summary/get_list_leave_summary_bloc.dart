import 'package:bloc/bloc.dart';
import '../../data/services/Leave/view_leave_summary_all_service.dart';
import '../../data/model/Leave/view_leave_summary_all_model.dart';

part 'get_list_leave_summary_event.dart';
part 'get_list_leave_summary_state.dart';

class GetListLeaveSummaryBloc
    extends Bloc<GetListLeaveSummaryEvent, GetListLeaveSummaryState> {
  final ViewLeaveSummaryAllService service;
  GetListLeaveSummaryBloc(this.service)
      : super(GetListLeaveSummaryStateInitial()) {
    on<GetListLeaveSummaryEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<DoGetListLeaveSummaryEvent>((event, emit) async {
      emit(GetListLeaveSummaryStateLoading());

      final result = await service.listLeaveSummary();

      result.fold((l) => emit(GetListLeaveSummaryStateError()),
          (r) => emit(GetListLeaveSummaryStateLoaded(data: r)));
    });
  }
}
