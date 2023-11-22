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

                              //grid2
                              return GridView.builder(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 0.65,
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                ),
                                itemCount: state.data.length,
                                itemBuilder: (context, index) {
                                  final ViewTransJadwalShiftWebModel
                                      transshift = state.data[index];

                                  return InkWell(
                                    child: Card(
                                      elevation: 2,
                                      shadowColor: const Color(0xffEE4D2D),
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "${transshift.noMesin}",
                                            style: const TextStyle(
                                              color: Color(0xffEE4D2D),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "${transshift.namaKaryawan}",
                                            style: const TextStyle(
                                              color: Color(0xffEE4D2D),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            "${transshift.jmlJamKerja}",
                                            style: const TextStyle(
                                              color: Color(0xffEE4D2D),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            "${transshift.jabatan}",
                                            style: const TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Text(
                                              "${transshift.pulang}",
                                              maxLines: 2,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          const Divider(
                                            height: 2,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
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
