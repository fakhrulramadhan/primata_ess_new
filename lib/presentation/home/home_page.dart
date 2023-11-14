import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primata_ess_new/bloc/get_view_master_employee/get_view_master_employee_bloc.dart';
import 'package:primata_ess_new/presentation/clock_in/list_clock_in.dart';
import 'package:primata_ess_new/presentation/home/home_page_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    context
        .read<GetViewMasterEmployeeBloc>()
        .add(DoGetViewMasterEmployeeEvent());
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
      drawer: const HomePageMenu(),
      appBar: AppBar(
        title: const Text("Primata ESS"),
        actions: const [],
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child:
            BlocBuilder<GetViewMasterEmployeeBloc, GetViewMasterEmployeeState>(
          builder: (context, state) {
            if (state is GetViewMasterEmployeeError) {
              return const Center(
                child: Text("Data Server Error"),
              );
            }

            if (state is GetViewMasterEmployeeLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is GetViewMasterEmployeeLoaded) {
              if (state.data == null) {
                return const Center(
                  child: Text("Data Empty"),
                );
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        vertical: 18.0, horizontal: 42.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.teal[300],
                              child: ClipOval(
                                child: SizedBox(
                                  width: 150.0,
                                  height: 150.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      // Navigator.of(context)
                                      //     .push(new MaterialPageRoute(
                                      //   builder: (BuildContext context) =>
                                      //       new ProfilePage(),
                                      // ));
                                    },
                                    child: Image.asset(
                                      "assets/images/avatar.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            const SizedBox(),
                            Text(
                              // snapshot.data!.employeeName,
                              "${state.data.employeeName}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "${state.data.emplId}",
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14.0),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "${state.data.position}",
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Center(
                      child: Wrap(
                        spacing: 20.0,
                        runSpacing: 20.0,
                        children: <Widget>[
                          SizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: GestureDetector(
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          //const AddClockInPage(),
                                          const ListClockInPage()),
                                );
                              },
                              child: Container(
                                height: 120,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0.0, 3.0),
                                        blurRadius: 15.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset('assets/images/AbsenIn.png',
                                          width: 50.0),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      const Text(
                                        "Clock In",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100.0,
                            height: 120,
                            child: GestureDetector(
                              onTap: () async {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => AddClockOut(),
                                //   ),
                                // );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0.0, 3.0),
                                        blurRadius: 15.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset('assets/images/AbsenOut.png',
                                          width: 50.0),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      const Text(
                                        "Clock Out",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100.0,
                            height: 120,
                            child: GestureDetector(
                              onTap: () async {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => ShiftSchedule(),
                                //   ),
                                // );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0.0, 3.0),
                                        blurRadius: 15.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset('assets/images/todo.png',
                                          width: 54.0),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      const Text(
                                        "My Schedule",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100.0,
                            height: 120,
                            child: GestureDetector(
                              onTap: () async {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => Attendance(),
                                //   ),
                                // );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0.0, 3.0),
                                        blurRadius: 15.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset('assets/images/calendar.png',
                                          width: 54.0),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      const Text(
                                        "My Attendance",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100.0,
                            height: 120,
                            child: GestureDetector(
                              onTap: () async {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => Leave(),
                                //   ),
                                // );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0.0, 3.0),
                                        blurRadius: 15.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset('assets/images/Leave.png',
                                          width: 55.0),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      const Text(
                                        "My Leave",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100.0,
                            height: 120,
                            child: GestureDetector(
                              onTap: () async {
                                _sweetAlert(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0.0, 3.0),
                                        blurRadius: 15.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset('assets/images/settings.png',
                                          width: 54.0),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      const Text(
                                        "Settings",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100.0,
                            height: 120,
                            child: GestureDetector(
                              onTap: () {
                                _sweetAlert(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0.0, 3.0),
                                        blurRadius: 15.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset('assets/images/settings.png',
                                          width: 54.0),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      const Text(
                                        "Report",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
