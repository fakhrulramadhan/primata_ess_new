import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primata_ess_new/data/services/ViewMasterEmployee/view_master_employee_service.dart';

import '../../data/model/ViewMasterEmployee/view_master_employee_list_model.dart';

part 'get_view_master_employee_event.dart';
part 'get_view_master_employee_state.dart';

class GetViewMasterEmployeeBloc
    extends Bloc<GetViewMasterEmployeeEvent, GetViewMasterEmployeeState> {
  final ViewMasterEmployeeListService service;
  GetViewMasterEmployeeBloc(this.service)
      : super(GetViewMasterEmployeeInitial()) {
    on<GetViewMasterEmployeeEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<DoGetViewMasterEmployeeEvent>((event, emit) async {
      emit(GetViewMasterEmployeeLoading());
      final result = await service.getEmployeeListNew();
      result.fold((l) => emit(GetViewMasterEmployeeError()),
          (r) => emit(GetViewMasterEmployeeLoaded(data: r)));
    });
  }
}
