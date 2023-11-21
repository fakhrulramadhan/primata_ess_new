import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:primata_ess_new/bloc/get_list_attendance/get_list_attendance_bloc.dart';
import 'package:primata_ess_new/data/model/VIewTrans/view_trans_jadwal_shift_web_model.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  //karena pakai bloc, maka ambil datanya pakai state
  late List<ViewTransJadwalShiftWebModel> dataAttendance;

  final formatTgl = DateFormat('dd/MM/yyyy');
  final formatTime = DateFormat('hh:mm:ss');
  final formatHari = DateFormat('EEEE');

  // scrollbar
  final ScrollController verticalScroll = ScrollController();
  final ScrollController horizontalScroll = ScrollController();
  final double width = 20;

  //pada saat awal page dibuka, jalanin ini dulu
  @override
  void initState() {
    context.read<GetListAttendanceBloc>().add(DoGetListAttandanceStateEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Attendance"),
          actions: const [],
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 15.0)
                    ]),
                child: Scrollbar(
                  controller: horizontalScroll,
                  child: SingleChildScrollView(
                      controller: horizontalScroll,
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        controller: verticalScroll,
                        child: BlocBuilder<GetListAttendanceBloc,
                            GetListAttandanceState>(
                          builder: (context, state) {
                            if (state is GetListAttandanceStateError) {
                              return const Center(
                                child: Text("Data Error"),
                              );
                            }
                            if (state is GetListAttandanceStateLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }

                            if (state is GetListAttandanceStateLoaded) {
                              if (state.data == null) {
                                return const Center(
                                  child: Text("Tidak ada Data"),
                                );
                              }

                              return DataTable(
                                  dataRowMinHeight: 60,
                                  columns: const [
                                    DataColumn(
                                        label: Text(
                                          "Date",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "SHIFT",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "IN",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "OUT",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "TOTAL",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false)
                                  ],
                                  rows: List.generate(dataAttendance.length,
                                      (index) {
                                    return DataRow(cells: <DataCell>[
                                      DataCell(Column(
                                        children: [
                                          const Spacer(flex: 1),
                                          Text(formatTgl.format(DateTime.parse(
                                              "${state.data[index].tanggal}"))),
                                          const Spacer(
                                            flex: 1,
                                          ),
                                          Text(formatHari.format(DateTime.parse(
                                              "${state.data[index].tanggal}"))),
                                          const Spacer(
                                            flex: 1,
                                          ),
                                        ],
                                      )),
                                      DataCell(
                                        Text("${state.data[index].noShift}"),
                                      ),
                                      DataCell(
                                        Text("${state.data[index].masuk}"),
                                      ),
                                      DataCell(
                                          Text("${state.data[index].pulang}")),
                                      DataCell(
                                        Text(
                                            "${state.data[index].jmlJamKerja}"),
                                      )
                                    ]);
                                  }));
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        ),
                      )),
                ),
              ),
            )
          ],
        ));
  }
}
