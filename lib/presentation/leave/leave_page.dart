import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primata_ess_new/data/model/Leave/view_leave_summary_all_model.dart';
import '../../bloc/get_list_leave_summary/get_list_leave_summary_bloc.dart';

class LeavePage extends StatefulWidget {
  const LeavePage({super.key});

  @override
  State<LeavePage> createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage>
    with SingleTickerProviderStateMixin {
  final ScrollController verticalScroll = ScrollController();
  final ScrollController horizontalScroll = ScrollController();

  late final List<ViewLeaveSummaryAllModel> leaveList;

  @override
  void initState() {
    //awalan load datanya disini
    context.read<GetListLeaveSummaryBloc>().add(DoGetListLeaveSummaryEvent());
    // TODO: implement initState
    super.initState();
  }

  Future<void> _sweetAlert(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Not Available'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Not available for demo version'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leave Page"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 5)),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
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
                        controller: verticalScroll,
                        child: BlocBuilder<GetListLeaveSummaryBloc,
                            GetListLeaveSummaryState>(
                          builder: (context, state) {
                            if (state is GetListLeaveSummaryStateError) {
                              return const Center(
                                child: Text("Data Server Error"),
                              );
                            }

                            if (state is GetListLeaveSummaryStateLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }

                            if (state is GetListLeaveSummaryStateLoaded) {
                              if (state.data == null) {
                                return const Center(
                                  child: Text("Data Empty"),
                                );
                              }

                              return DataTable(
                                  columns: const [
                                    DataColumn(
                                        label: Text(
                                          "Leave Type",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "Entitlement Last Year",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "Taken Last Year",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "Taken Last Year",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "Balance Last Year",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "Entitlement ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "Taken",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false),
                                    DataColumn(
                                        label: Text(
                                          "Remaining",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        numeric: false)
                                  ],
                                  rows:
                                      List.generate(leaveList.length, (index) {
                                    return DataRow(cells: <DataCell>[
                                      DataCell(
                                        Text(
                                            "${state.data[index].initialLeave}"),
                                      ),
                                      DataCell(
                                        Text(
                                            "${state.data[index].lyentitlement}"),
                                      ),
                                      DataCell(
                                        Text("${state.data[index].lytaken}"),
                                      ),
                                      DataCell(
                                        Text("${state.data[index].balance}"),
                                      ),
                                      DataCell(
                                        Text(
                                            "${state.data[index].tyentitlement}"),
                                      ),
                                      DataCell(
                                        Text("${state.data[index].tytaken}"),
                                      ),
                                      DataCell(
                                        Text("${state.data[index].remaining}"),
                                      )
                                    ]);
                                  }));
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
          _sweetAlert(context);
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }
}
