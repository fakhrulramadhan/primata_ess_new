import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primata_ess_new/bloc/get_view_master_employee/get_view_master_employee_bloc.dart';
import 'package:primata_ess_new/presentation/login/login_page.dart';

class HomePageMenu extends StatefulWidget {
  const HomePageMenu({super.key});

  @override
  State<HomePageMenu> createState() => _HomePageMenuState();
}

class _HomePageMenuState extends State<HomePageMenu>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    context
        .read<GetViewMasterEmployeeBloc>()
        .add(DoGetViewMasterEmployeeEvent());
    super.initState();
  }

  Future<void> _sweetAlert() async {
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

  Future<void> _signOut() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Konfirmasi Logout'),
          content: SizedBox(
            height: 250.0,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ClipOval(
                  child: SizedBox(
                    width: 90.0,
                    height: 90.0,
                    child: Image.asset(
                      "assets/images/avatar.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Sign Out?",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.check),
                          Padding(padding: EdgeInsets.all(5.0)),
                          Text("Yes")
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.close),
                          Padding(padding: EdgeInsets.all(5.0)),
                          Text("Cancel")
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          // actions: <Widget>[
          //   TextButton(
          //     child: const Text('OK'),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetViewMasterEmployeeBloc, GetViewMasterEmployeeState>(
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

        //pada saat data selesai termuat
        if (state is GetViewMasterEmployeeLoaded) {
          if (state.data.isNull) {
            return const Center(
              child: Text("Data Empty"),
            );
          }

          //ini kalau datanya ada
          return Drawer(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "${state.data.employeeName}",
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/icon/icon.png",
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_box),
                    title: const Text("My Account"),
                    onTap: () {
                      Navigator.of(context).pop();
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (BuildContext context) => ProfilePage(),
                      //     ));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.event_note),
                    title: const Text("My Shift Schedule"),
                    onTap: () {
                      Navigator.of(context).pop();
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (BuildContext context) => ProfilePage(),
                      //     ));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_box),
                    title: const Text("My Attendance"),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.content_paste),
                    title: const Text("My Leave"),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Divider(
                    height: 20,
                    thickness: 0.5,
                    color: Colors.black.withOpacity(0.4),
                    indent: 32,
                    endIndent: 32,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.map_outlined,
                      size: 24.0,
                    ),
                    title: const Text("My Location"),
                    onTap: () {
                      _sweetAlert();
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                      size: 24.0,
                    ),
                    title: const Text("Logout"),
                    onTap: () {
                      _signOut();
                    },
                  )
                ],
              ),
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
