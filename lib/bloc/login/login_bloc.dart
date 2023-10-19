import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../data/model/Login_Request/login_request_model.dart';
import '../../data/model/Login_Response/login_response_model.dart';
import '../../data/services/Login/login_remote_service.dart';

part 'login_event.dart';
part 'login_state.dart';

//bloc enter
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRemoteService service;
  LoginBloc(
    this.service,
  ) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<DoLoginEvent>((event, emit) async {
      emit(LoginLoading()); //update ui pakai emit(nama_state)

      final result = await service.login(event.model);
      //sebagai decision sukses / gagal login
      result.fold(
          (l) => emit(LoginError()), (r) => emit(LoginLoaded(model: r)));
    });
  }
}
