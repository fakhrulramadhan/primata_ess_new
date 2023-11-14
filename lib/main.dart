import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primata_ess_new/bloc/get_history_absensi_in/get_history_absensi_in_bloc.dart';
import 'package:primata_ess_new/bloc/get_view_master_employee/get_view_master_employee_bloc.dart';
import 'package:primata_ess_new/bloc/history_absensi_offline_transfer/history_absensi_offline_transfer_bloc.dart';
import 'package:primata_ess_new/bloc/login/login_bloc.dart';
import 'package:primata_ess_new/data/services/Absensi_In/absensi_In_service.dart';
import 'package:primata_ess_new/data/services/Absensi_In/history_absensi_offline_transfers_service.dart';
import 'package:primata_ess_new/data/services/Login/login_remote_service.dart';
import 'package:primata_ess_new/data/services/ViewMasterEmployee/view_master_employee_service.dart';
import 'package:primata_ess_new/presentation/clock_in/add_clock_in.dart';
import 'package:primata_ess_new/presentation/clock_in/list_clock_in.dart';
import 'package:primata_ess_new/presentation/login/login_page.dart';

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
        ),
        BlocProvider(
          create: (context) =>
              GetViewMasterEmployeeBloc(ViewMasterEmployeeListService()),
        ),
        // BlocProvider(
        //   create: (context) => GmapBloc(GmapService()),
        // ),
        BlocProvider(
          create: (context) => HistoryAbsensiOfflineTransferBloc(
            HistoryAbsensiOfflineTransferService(),
          ),
          child: const AddClockInPage(),
        ),
        BlocProvider(
          create: (context) => GetHistoryAbsensiInBloc(AbsensiInService()),
          child: const ListClockInPage(),
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
