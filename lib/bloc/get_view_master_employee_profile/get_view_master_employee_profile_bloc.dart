import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/ViewMasterEmployee/view_master_employee_profile.dart';
import '../../data/services/ViewMasterEmployee/view_master_employee_profile_service.dart';
part 'get_view_master_employee_profile_event.dart';
part 'get_view_master_employee_profile_state.dart';

class GetViewMasterEmployeeProfileBloc extends Bloc<
    GetViewMasterEmployeeProfileEvent, GetViewMasterEmployeeProfileState> {
  final ViewMasterEmployeeProfileService service;
  GetViewMasterEmployeeProfileBloc(this.service)
      : super(GetViewMasterEmployeeProfileInitial()) {
    // on<GetViewMasterEmployeeEvent>((event, emit) {
    //   // TODO: implement event handler
    // });

    on<GetDataProfileEvent>((event, emit) async {
      emit(GetViewMasterEmployeeProfileLoading());

      final result = await service.getEmployeeProfile();
      result.fold((l) => emit(GetViewMasterEmployeeProfileError()),
          (r) => emit(GetViewMasterEmployeeProfileLoaded(data: r)));
    });
  }
}
