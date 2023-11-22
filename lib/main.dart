import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primata_ess_new/bloc/get_history_absensi_in/get_history_absensi_in_bloc.dart';
import 'package:primata_ess_new/bloc/get_leave_detail/get_leave_detail_bloc.dart';
import 'package:primata_ess_new/bloc/get_list_attendance/get_list_attendance_bloc.dart';
import 'package:primata_ess_new/bloc/get_list_leave_summary/get_list_leave_summary_bloc.dart';
import 'package:primata_ess_new/bloc/get_view_master_employee/get_view_master_employee_bloc.dart';
import 'package:primata_ess_new/bloc/get_view_master_employee_profile/get_view_master_employee_profile_bloc.dart';
import 'package:primata_ess_new/bloc/history_absensi_offline_transfer/history_absensi_offline_transfer_bloc.dart';
import 'package:primata_ess_new/bloc/login/login_bloc.dart';
import 'package:primata_ess_new/data/services/Absensi_In/absensi_In_service.dart';
import 'package:primata_ess_new/data/services/Absensi_In/history_absensi_offline_transfers_service.dart';
import 'package:primata_ess_new/data/services/Leave/trans_leave_service.dart';
import 'package:primata_ess_new/data/services/Leave/view_leave_summary_all_service.dart';
import 'package:primata_ess_new/data/services/Login/login_remote_service.dart';
import 'package:primata_ess_new/data/services/ViewMasterEmployee/view_master_employee_profile_service.dart';
import 'package:primata_ess_new/data/services/ViewMasterEmployee/view_master_employee_service.dart';
import 'package:primata_ess_new/data/services/ViewTransJadwalShiftWeb/view_trans_jadwal_shift_web_attendance.dart';
import 'package:primata_ess_new/data/services/ViewTransJadwalShiftWeb/view_trans_jadwal_shift_web_schedule_service.dart';
import 'package:primata_ess_new/presentation/clock_in/add_clock_in_page.dart';
import 'package:primata_ess_new/presentation/clock_in/list_clock_in_page.dart';
import 'package:primata_ess_new/presentation/home/home_page.dart';
import 'package:primata_ess_new/presentation/leave/leave_detail_page.dart';
import 'package:primata_ess_new/presentation/leave/leave_page.dart';
import 'package:primata_ess_new/presentation/login/login_page.dart';
import '../../bloc/get_view_trans_jadwal_shift/get_view_trans_jadwal_shift_bloc.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(
      const MyApp(),
    ),
    blocObserver: AppBlocObserver(),
  );
}

class AppBlocObserver extends BlocObserver {
  ///We can run something, when we create our Bloc
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    ///We can check, if the BlocBase is a Bloc or a Cubit
    if (bloc is Cubit) {
      print("This is a Cubit");
    } else {
      print("This is a Bloc");
    }
  }

  ///We can react to events
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print("an event Happened in $bloc the event is $event");
  }

  ///We can even react to transitions
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    /// With this we can specifically know, when and what changed in our Bloc
    print(
        "There was a transition from ${transition.currentState} to ${transition.nextState}");
  }

  ///We can react to errors, and we will know the error and the StackTrace
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print(
        "Error happened in $bloc with error $error and the stacktrace is $stackTrace");
  }

  ///We can even run something, when we close our Bloc
  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print("BLOC is closed");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(LoginRemoteService()),
          child: const LoginPage(),
        ),
        BlocProvider(
          create: (context) =>
              GetViewMasterEmployeeBloc(ViewMasterEmployeeListService()),
          child: const HomePage(),
        ),
        BlocProvider(
          create: (context) => HistoryAbsensiOfflineTransferBloc(
            HistoryAbsensiOfflineTransferService(),
          ),
          child: const AddClockInPage(),
        ),
        BlocProvider(
          create: (context) => GetHistoryAbsensiInBloc(AbsensiInService()),
          child: const ListClockInPage(),
        ),
        BlocProvider(
          create: (context) => GetLeaveDetailBloc(TransLeaveService()),
          child: const LeaveDetailPage(),
        ),
        BlocProvider(
          create: (context) =>
              GetListLeaveSummaryBloc(ViewLeaveSummaryAllService()),
          child: const LeavePage(),
        ),
        BlocProvider(
          create: (context) =>
              GetListAttendanceBloc(ViewTransJadwalShiftWebAttendanceService()),
          child: Container(),
        ),
        BlocProvider(
          create: (context) => GetViewTransJadwalShiftBloc(
              ViewTransJadwalShiftWebScheduleService()),
          child: Container(),
        ),
        BlocProvider(
          create: (context) => GetViewMasterEmployeeProfileBloc(
              ViewMasterEmployeeProfileService()),
          child: Container(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Primata ESS",
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.red,
            ),
            useMaterial3: true),
        home: const LoginPage(),
      ),
    );
  }
}
