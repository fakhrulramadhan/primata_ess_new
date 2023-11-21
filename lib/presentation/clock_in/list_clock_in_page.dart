import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primata_ess_new/bloc/get_history_absensi_in/get_history_absensi_in_bloc.dart';
import 'package:primata_ess_new/data/model/Absensi_In_Out/get_history_absensi_offline_transfers_model.dart';
import 'package:primata_ess_new/presentation/clock_in/add_clock_in_page.dart';

class ListClockInPage extends StatefulWidget {
  const ListClockInPage({super.key});

  @override
  State<ListClockInPage> createState() => _ListClockInPageState();
}

class _ListClockInPageState extends State<ListClockInPage> {
  late List<GetHistoryAbsensiTransfersModel> listClockIn;

  @override
  void initState() {
    context.read<GetHistoryAbsensiInBloc>().add(DoGetHistoryAbsensiEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primata Ess"),
        actions: const [],
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 370,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0.0, 3.0),
                        blurRadius: 15)
                  ]),
              child: BlocBuilder<GetHistoryAbsensiInBloc,
                  GetHistoryAbsensiInState>(
                builder: (context, state) {
                  if (state is GetHistoryAbsensiInStateError) {
                    return const Center(
                      child: Text("Data Server Error"),
                    );
                  }

                  if (state is GetHistoryAbsensiInStateLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (state is GetHistoryAbsensiInStateLoaded) {
                    if (state.data == null) {
                      return const Center(
                        child: Text("Data Empty"),
                      );
                    }

                    return Flexible(
                        child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                          columns: const [
                            DataColumn(
                                label: Text(
                                  "Tanggal",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                numeric: false),
                            DataColumn(
                                label: Text(
                                  "Latitude",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                numeric: false),
                            DataColumn(
                                label: Text(
                                  "Longitude",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                numeric: false)
                          ],
                          rows: List.generate(listClockIn.length, (index) {
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
                                  Text("${state.data[index].latitude}"),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  Text("${state.data[index].longitude}"),
                                ],
                              ))
                            ]);
                          })),
                    ));
                  }

                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(
          Icons.add,
          size: 24.0,
        ),
        label: const Text(
          "Tambah",
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
        onPressed: () {
          //
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddClockInPage()),
          );
        },
      ),
    );
  }
}
