import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LeaveRequestPage extends StatefulWidget {
  const LeaveRequestPage({super.key});

  @override
  State<LeaveRequestPage> createState() => _LeaveRequestPageState();
}

class _LeaveRequestPageState extends State<LeaveRequestPage> {
  String leaveSelected = '';
  final _leaves = TextEditingController();
  final _dateStart = TextEditingController();
  final _dateEnd = TextEditingController();

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
                      autovalidateMode: AutovalidateMode.always,
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
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
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
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
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
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
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
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
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
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      enabled: true,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          labelText: _dateEnd.text,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          prefixIcon: const Icon(
                            Icons.calendar_month,
                            size: 24.0,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16))),
                      onChanged: (value) {
                        value = _dateEnd.text;

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
                            _dateEnd.text =
                                DateFormat('yyy-MM-dd').format(pickEndDate);
                          });
                        }
                      },
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      enabled: true,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                      decoration: const InputDecoration(
                          labelText: "Status",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10)),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
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
                                      autovalidateMode: AutovalidateMode.always,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.done,
                                      controller: _dateStart,
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
                                            _dateStart.text =
                                                DateFormat('yyyy-MM-dd')
                                                    .format(pickStartDate);
                                          });
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    TextFormField(
                                      autovalidateMode: AutovalidateMode.always,
                                      enabled: true,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.done,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                      decoration: InputDecoration(
                                          labelText: "End Date",
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
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
                                            _dateEnd.text =
                                                DateFormat('yyyy-MM-dd')
                                                    .format(pickEndDate);
                                          });
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    TextFormField(
                                      autovalidateMode: AutovalidateMode.always,
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
                                    ),
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    TextFormField(
                                      autovalidateMode: AutovalidateMode.always,
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
                                                  vertical: 10, horizontal: 10),
                                          prefixIcon: const Icon(
                                            Icons.numbers,
                                            size: 24.0,
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16))),
                                      onChanged: (value) {},
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
                                            color: Colors.white, fontSize: 17),
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
      )),
    );
  }
}
