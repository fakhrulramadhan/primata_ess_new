import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primata_ess_new/presentation/home/home_page.dart';
import '../../bloc/get_view_master_employee_profile/get_view_master_employee_profile_bloc.dart';
import 'package:intl/intl.dart';
import '../../data/model/ViewMasterEmployee/view_master_employee_profile.dart';
import 'dart:async';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Future<ViewMasterEmployeeProfileModel> model;

  final formatTgl = DateFormat('dd/MM/yyyy');

  @override
  void initState() {
    context.read<GetViewMasterEmployeeProfileBloc>().add(GetDataProfileEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile",
            style: TextStyle(
              color: Colors.white,
            )),
        actions: const [],
        backgroundColor: Colors.teal,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          icon: const Icon(
            Icons.home,
            size: 24.0,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(child: BlocBuilder<
          GetViewMasterEmployeeProfileBloc, GetViewMasterEmployeeProfileState>(
        builder: (context, state) {
          if (state is GetViewMasterEmployeeProfileLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is GetViewMasterEmployeeProfileError) {
            return const Center(
              child: Text("Data Server Error"),
            );
          }

          if (state is GetViewMasterEmployeeProfileLoaded) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [],
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 42),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.teal,
                              child: ClipOval(
                                child: SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProfilePage()),
                                      );
                                    },
                                    child: Image.asset(
                                      "assets/images/avatar5.png",
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
                          children: [
                            const SizedBox(),
                            Text(
                              state.data.employeeName.toString(),
                              style: const TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              state.data.emplId.toString(),
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: 310,
                    width: 370,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0.0, 3.0),
                              blurRadius: 15)
                        ]),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.home,
                                  size: 24.0,
                                ),
                                title: const Text(
                                  "Division: ",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                ),
                                subtitle: Text(
                                  state.data.division.toString(),
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.build,
                                  size: 24.0,
                                ),
                                title: const Text(
                                  "Department:",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                ),
                                subtitle: Text(
                                  state.data.department.toString(),
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.work,
                                  size: 24.0,
                                ),
                                title: const Text(
                                  "Position: ",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                ),
                                subtitle: Text(
                                  state.data.position.toString(),
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.location_city,
                                  size: 24.0,
                                ),
                                title: const Text(
                                  "Work Unit:",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                                subtitle: Text(
                                  state.data.unitKerja.toString(),
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 5, left: 5),
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: 310,
                    width: 370,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0.0, 3.0),
                              blurRadius: 15)
                        ]),
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 10, right: 5, left: 5),
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        height: 310,
                        width: 370,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(0.0, 3.0),
                                  blurRadius: 15)
                            ]),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.category,
                                      size: 24.0,
                                    ),
                                    title: const Text(
                                      "Category",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    subtitle: Text(
                                      state.data.category.toString(),
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.calendar_month,
                                      size: 24.0,
                                    ),
                                    title: const Text(
                                      "Level / Grade:",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    subtitle: Text(
                                      state.data.levelId.toString(),
                                      style: const TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.calendar_month,
                                      size: 24.0,
                                    ),
                                    title: const Text(
                                      "Date Of Birth",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    subtitle: Text(
                                      state.data.dateOfBirth.toString(),
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.calendar_month,
                                      size: 24.0,
                                    ),
                                    title: const Text(
                                      "Date Retire:",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    subtitle: Text(
                                      state.data.dateRetire.toString(),
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      )),
    );
  }
}
