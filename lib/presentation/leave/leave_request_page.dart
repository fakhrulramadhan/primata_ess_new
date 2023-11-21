import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LeaveRequestPage extends StatefulWidget {
  const LeaveRequestPage({super.key});

  @override
  State<LeaveRequestPage> createState() => _LeaveRequestPageState();
}

class _LeaveRequestPageState extends State<LeaveRequestPage> {
  String leaveSelected = '';

  final leaveRequestFormKey = GlobalKey<FormState>();

  final _leavesController = TextEditingController();
  final _dateStartController = TextEditingController();
  final _dateEndController = TextEditingController();

  final empNoController = TextEditingController();
  final nameController = TextEditingController();
  final departementController = TextEditingController();
  final titleController = TextEditingController();
  final leaveNoController = TextEditingController();
  final statusController = TextEditingController();
  final progressController = TextEditingController();
  final qtyController = TextEditingController();

  List<String> data = ["Advance DP", "Annual Leave", "DayPay", "Sick Leave"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Request"),
        backgroundColor: Colors.teal[300],
        actions: const [],
      ),
      body: SingleChildScrollView(
          child: Form(
        key: leaveRequestFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 15.0)
                    ]),
                child: SingleChildScrollView(
                  //controller: controller,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: empNoController,
                        //autovalidateMode: AutovalidateMode.always,
                        autovalidateMode: AutovalidateMode.disabled,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            enabled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            labelText: "Emp. No",
                            prefixIcon: const Icon(
                              Icons.alarm_on,
                              size: 24.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onChanged: (value) {},
                        validator: (value) {
                          print(value);

                          if (value == null || value.isEmpty) {
                            return "Emp. no Harap Diisi";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        controller: nameController,
                        //autovalidateMode: AutovalidateMode.always,
                        autovalidateMode: AutovalidateMode.disabled,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                            labelText: "Name",
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            prefixIcon: const Icon(
                              Icons.alarm,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        validator: (value) {
                          print(value);

                          if (value == null || value.isEmpty) {
                            return "Name Wajib Diisi";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        //autovalidateMode: AutovalidateMode.always,
                        autovalidateMode: AutovalidateMode.disabled,
                        controller: departementController,
                        enabled: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            enabled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            labelText: "Department",
                            prefixIcon: const Icon(
                              Icons.alarm_on,
                              size: 24.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0))),
                        onChanged: (value) {},
                        validator: (value) {
                          print(value);

                          if (value == null || value.isEmpty) {
                            return "Department Wajib Diisi";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        controller: titleController,
                        autovalidateMode: AutovalidateMode.disabled,
                        enabled: true,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            labelText: "Title",
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 10),
                            prefixIcon: const Icon(
                              Icons.map,
                              size: 24.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onChanged: (value) {},
                        validator: (value) {
                          print(value);
                          if (value == null || value.isEmpty) {
                            return "Title wajib diisi";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.disabled,
                        controller: leaveNoController,
                        enabled: true,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            labelText: "Leave No",
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            prefixIcon: const Icon(
                              Icons.numbers,
                              size: 24.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14))),
                        onChanged: (value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Leave No Wajib diisi";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.disabled,
                        enabled: true,
                        controller: _dateEndController,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            labelText: "End Date  ${_dateEndController.text}",
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            prefixIcon: const Icon(
                              Icons.calendar_month,
                              size: 24.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onChanged: (value) {
                          value = _dateEndController.text;

                          setState(() {});
                        },
                        onTap: () async {
                          DateTime? pickEndDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));

                          if (pickEndDate != null) {
                            setState(() {
                              _dateEndController.text =
                                  DateFormat('yyy-MM-dd').format(pickEndDate);
                            });
                          }
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "End Date Wajib diisi";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.disabled,
                        controller: statusController,
                        enabled: true,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: const InputDecoration(
                            labelText: "Status",
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10)),
                        onChanged: (value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Status wajib diisi";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.disabled,
                        controller: progressController,
                        enabled: true,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            labelText: "Progress",
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            prefixIcon: const Icon(
                              Icons.accessibility,
                              size: 24.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onChanged: (value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Progress wajib diisi";
                          }
                          return null;
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 15)
                    ]),
                child: SingleChildScrollView(
                  //controller: controller,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.done,
                                        controller: _dateStartController,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                        decoration: InputDecoration(
                                          enabled: true,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                          labelText: "Start Date",
                                          prefixIcon: const Icon(
                                            Icons.date_range,
                                            size: 24.0,
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                        ),
                                        onTap: () async {
                                          DateTime? pickStartDate =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(1900),
                                                  lastDate: DateTime(2100));

                                          //update UI
                                          if (pickStartDate != null) {
                                            setState(() {
                                              _dateStartController.text =
                                                  DateFormat('yyyy-MM-dd')
                                                      .format(pickStartDate);
                                            });
                                          }
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Start Date Wajib Diisi";
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(
                                        height: 12.0,
                                      ),
                                      TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        enabled: true,
                                        controller: _dateEndController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        textInputAction: TextInputAction.done,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                        decoration: InputDecoration(
                                            labelText: "End Date",
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 10),
                                            prefixIcon: const Icon(
                                              Icons.calendar_month,
                                              size: 24.0,
                                            ),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16))),
                                        onTap: () async {
                                          DateTime? pickEndDate =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(1900),
                                                  lastDate: DateTime(2100));

                                          if (pickEndDate != null) {
                                            setState(() {
                                              _dateEndController.text =
                                                  DateFormat('yyyy-MM-dd')
                                                      .format(pickEndDate);
                                            });
                                          }
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "End Date Wajib Diisi";
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(
                                        height: 12.0,
                                      ),
                                      TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        controller: statusController,
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.done,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                        decoration: InputDecoration(
                                          enabled: true,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                          labelText: "Status",
                                          prefixIcon: const Icon(
                                            Icons.alarm_on,
                                            size: 24.0,
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                        ),
                                        onChanged: (value) {},
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "End Date Wajib Diisi";
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(
                                        height: 12.0,
                                      ),
                                      TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        controller: qtyController,
                                        enabled: true,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        decoration: InputDecoration(
                                            labelText: "Qty",
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 10),
                                            prefixIcon: const Icon(
                                              Icons.numbers,
                                              size: 24.0,
                                            ),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16))),
                                        onChanged: (value) {},
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Qty Wajib Diisi";
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(
                                        height: 12.0,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.teal,
                                            minimumSize: const Size(150, 80)),
                                        onPressed: () {},
                                        child: const Text(
                                          "Save",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
