import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primata_ess_new/data/model/VIewTrans/view_trans_jadwal_shift_web_model.dart';
import '../../bloc/get_view_trans_jadwal_shift/get_view_trans_jadwal_shift_bloc.dart';
import 'package:intl/intl.dart';

class ShiftSchedulePage extends StatefulWidget {
  const ShiftSchedulePage({super.key});

  @override
  State<ShiftSchedulePage> createState() => _ShiftSchedulePageState();
}

class _ShiftSchedulePageState extends State<ShiftSchedulePage> {
  late List<ViewTransJadwalShiftWebModel> shift;

  final formatTgl = DateFormat('dd/MM/yyyy');
  final formatTime = DateFormat('hh:mm:ss');
  final formatHari = DateFormat('EEEE');

  final ScrollController verticalScroll = ScrollController();
  final ScrollController horizontalScroll = ScrollController();
  final double width = 20;

  @override
  void initState() {
    //jalankan pertama kali event dogetviewshift
    context
        .read<GetViewTransJadwalShiftBloc>()
        .add(DoGetViewTransJadwalShiftEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shift Schedule"),
          actions: const [],
          backgroundColor: Colors.teal.shade300,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            const Padding(padding: EdgeInsets.only(top: 5)),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 5, left: 10),
              child: Container(
                width: double.infinity,
                height: 470,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 15)
                    ]),
                child: Scrollbar(
                    controller: horizontalScroll,
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      controller: horizontalScroll,
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        controller: verticalScroll,
                        child: BlocBuilder<GetViewTransJadwalShiftBloc,
                            GetViewTransJadwalShiftState>(
                          builder: (context, state) {
                            if (state is GetViewTransJadwalShiftStateError) {
                              return const Center(
                                child: Text(
                                  "Data Server Error",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              );
                            }

                            if (state is GetViewTransJadwalShiftStateLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }

                            if (state is GetViewTransJadwalShiftStateLoaded) {
                              if (state.data == null) {
                                return const Center(
                                  child: Text("Belum ada data"),
                                );
                              }

                              return DataTable(
                                  columns: const [
                                    DataColumn(
                                        label: Text(
                                          "Date",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "SHIFT",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false)
                                  ],
                                  rows: List.generate(shift.length, (index) {
                                    return DataRow(cells: <DataCell>[
                                      DataCell(Column(
                                        children: [
                                          const Spacer(
                                            flex: 1,
                                          ),
                                          Text("${state.data[index].tanggal}"),
                                          const Spacer(
                                            flex: 1,
                                          ),
                                          Text(formatHari.format(DateTime.parse(
                                              '${state.data[index].tanggal}'))),
                                          const Spacer(
                                            flex: 1,
                                          )
                                        ],
                                      )),
                                      DataCell(
                                        Text("${state.data[index].noShift}"),
                                      )
                                    ]);
                                  }));
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        ),
                      ),
                    )),
              ),
            )
          ],
        ));
  }
}
