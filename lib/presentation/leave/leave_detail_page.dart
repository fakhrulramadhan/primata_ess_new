import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:primata_ess_new/bloc/get_leave_detail/get_leave_detail_bloc.dart';

import '../../data/model/Leave/trans_leaves_model.dart';

class LeaveDetailPage extends StatefulWidget {
  const LeaveDetailPage({super.key});

  @override
  State<LeaveDetailPage> createState() => _LeaveDetailPageState();
}

class _LeaveDetailPageState extends State<LeaveDetailPage> {
  late List<TransLeavesModel> leaveDetail;

  final formatTgl = DateFormat('dd/MM/yyyy');
  final formatHari = DateFormat('EEEE');

  @override
  void initState() {
    context.read<GetLeaveDetailBloc>().add(DoGetLeaveDetailEvent());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0.0, 3.0),
                            blurRadius: 15)
                      ]),
                  child: Flexible(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: BlocBuilder<GetLeaveDetailBloc, GetLeaveDetailState>(
                      builder: (context, state) {
                        if (state is GetLeaveDetailStateError) {
                          return const Center(
                            child: Text("Data Error"),
                          );
                        }

                        if (state is GetLeaveDetailStateLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (state is GetLeaveDetailStateLoaded) {
                          if (state.data == null) {
                            return const Center(
                              child: Text("Data Empty"),
                            );
                          }
                          return DataTable(
                              columns: const [
                                DataColumn(
                                    label: Text(
                                      "START DATE",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    numeric: false),
                                DataColumn(
                                    label: Text(
                                      "REFF",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    numeric: false),
                                DataColumn(
                                    label: Text(
                                      "DESCRIPTION",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    numeric: false),
                                DataColumn(
                                    label: Text(
                                      "ENTITLEMENT",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    numeric: false),
                                DataColumn(
                                    label: Text(
                                      "FORTFEITED",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    numeric: false),
                                DataColumn(
                                    label: Text(
                                      "REMAINING",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    numeric: false)
                              ],
                              rows: List.generate(leaveDetail.length, (index) {
                                return DataRow(cells: <DataCell>[
                                  DataCell(Text(formatTgl.format(DateTime.parse(
                                      '${state.data[index].startDate}')))),
                                  DataCell(Text("${state.data[index].reff}")),
                                  DataCell(
                                    Text("${state.data[index].keterangan}"),
                                  ),
                                  DataCell(
                                    Text("${state.data[index].entitlement}"),
                                  ),
                                  DataCell(
                                    Text("${state.data[index].forfeited}"),
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
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
