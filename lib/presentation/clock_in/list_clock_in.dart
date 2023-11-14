import 'package:flutter/material.dart';
import 'package:primata_ess_new/data/model/Absensi_In_Out/get_history_absensi_offline_transfers_model.dart';
import 'package:primata_ess_new/presentation/clock_in/add_clock_in.dart';
import '../../data/services/Absensi_In/absensi_In_service.dart';

class ListClockInPage extends StatefulWidget {
  const ListClockInPage({super.key});

  @override
  State<ListClockInPage> createState() => _ListClockInPageState();
}

class _ListClockInPageState extends State<ListClockInPage> {
  late List<GetHistoryAbsensiTransfersModel> listClockIn;

  @override
  void initState() {
    AbsensiInService().gotHistoryAbsensiIn().then((value) {
      listClockIn = value.toList();
    });
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
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(10.0)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            child: Container(
              width: double.infinity,
              height: 370.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 15.0,
                    )
                  ]),
              child: Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: FutureBuilder<List<GetHistoryAbsensiTransfersModel>>(
                    future: AbsensiInService().gotHistoryAbsensiIn(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return DataTable(
                            columns: const [
                              DataColumn(
                                label: Text('Tanggal',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                              DataColumn(
                                label: Text('Latitude',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                              DataColumn(
                                label: Text('Longitude',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                            ],
                            rows: List.generate(listClockIn.length, (index) {
                              return DataRow(cells: <DataCell>[
                                DataCell(Column(
                                  children: <Widget>[
                                    const Spacer(flex: 1),
                                    Text("${snapshot.data![index].tanggal}"),
                                    const Spacer(flex: 1),
                                    Text("${snapshot.data![index].latitude}"),
                                    const Spacer(flex: 1),
                                    Text("${snapshot.data![index].longitude}"),
                                    const Spacer(flex: 1),
                                  ],
                                )),
                              ]);
                            }));
                      } else if (snapshot.hasError) {
                        return Text(snapshot.error.toString());
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
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
