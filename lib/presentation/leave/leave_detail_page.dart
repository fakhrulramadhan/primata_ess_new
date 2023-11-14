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
                  child: const Flexible(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
