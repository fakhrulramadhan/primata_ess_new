import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:primata_ess_new/bloc/history_absensi_offline_transfer/history_absensi_offline_transfer_bloc.dart';
import 'package:primata_ess_new/data/model/Absensi_In_Out/history_absensi_offline_transfers_model.dart';
import 'package:primata_ess_new/presentation/home/home_page.dart';

class AddClockIn extends StatefulWidget {
  const AddClockIn({super.key});

  @override
  State<AddClockIn> createState() => _AddClockInState();
}

class _AddClockInState extends State<AddClockIn> {
  Future<HistoryAbsensiOfflineTransferModel>? HistoryAbsenOfflineTransfer;
  //LocationService locationService = LocationService();

  String now = DateTime.now().toString();

  final tglController = TextEditingController();
  final waktuController = TextEditingController();
  var latitudeController = TextEditingController();
  var longitudeController = TextEditingController();

  String formatTgl = DateFormat('dd/MM/yyyy').format(DateTime.now());
  String formatTime = DateFormat('hh:mm').format(DateTime.now());
  String formatHari = DateFormat('EEEE').format(DateTime.now());

  LatLng? position;

  //Location location = Location();

  late bool serviceEnabled;
  late PermissionStatus permissionGranted;
  //late LocationData _locationData;
  final clockInFormKey = GlobalKey<FormState>();

  String currentAddress = "";

  StreamSubscription<Position>? positionStreamSubscription;
  //StreamSubscription<ServiceStatus>? _serviceStatusStreamSubscription;
  bool positionStreamStarted = false;

  Position? position0;

  Future getLokasi() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (!(permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse)) {
      permission = await Geolocator.requestPermission();
    }
  }

  Future getLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium);
    print(position);
    return position;
  }

  Future<Position> _determinePosition() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    print("permission: $permission");

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location Permissions are denied');
      }
    }

    return await Geolocator.getCurrentPosition();
  }

  void _getCurrentLocation() async {
    Position position = await _determinePosition();
    setState(() {
      position0 = position;
    });
  }

  @override
  void initState() {
    latitudeController = TextEditingController();
    longitudeController = TextEditingController();
    waktuController.text = formatTime;
    tglController.text = formatTgl;
    // latitudeController.text = position0!.latitude.toString();
    // longitudeController.text = position0!.longitude.toString();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // LocationPermission permission = await Geolocator.checkPermission();
      // if (!(permission == LocationPermission.always ||
      //     permission == LocationPermission.whileInUse)) {
      //   permission = await Geolocator.requestPermission();
      // }
      _getCurrentLocation();

      // permissionLocartion();
      // context.read<GmapBloc>().add(const GmapEvent.getCurrentLocation());
      // getLokasi();
    });

    // getLocation();
    //super.initState();
  }

  double? latitude;
  double? longitude;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Clock In"),
        backgroundColor: Colors.teal,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Form(
                  key: clockInFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: tglController,
                        //initialValue: formatTgl,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: const InputDecoration(
                          enabled: false,
                          //labelText: formatTgl,

                          prefixIcon: Icon(
                            Icons.brightness_4,
                            size: 24.0,
                          ),
                        ),
                        onTap: () {},
                        validator: (val) {
                          print(val);
                          if (val == null || val.isEmpty) {
                            return "Format Tanggal Harap Diisi";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        controller: waktuController,
                        //initialValue: formatTime,
                        enabled: false,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: const InputDecoration(
                          enabled: false,
                          //labelText: formatTime,
                          prefixIcon: Icon(
                            Icons.alarm,
                            size: 24.0,
                          ),
                        ),
                        onTap: () {},
                        onChanged: (value) {
                          print(formatTime);
                        },
                        validator: (val) {
                          print(val);
                          if (val == null || val.isEmpty) {
                            return "Format Waktu Harap Diisi";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        controller: latitudeController,
                        enabled: false,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            labelText: "${position0?.latitude}",
                            prefixIcon: const Icon(
                              Icons.map,
                              size: 24.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onTap: () {},
                        onChanged: (value) {
                          latitudeController.text = "${position0?.latitude}";
                        },
                        validator: (val) {
                          return null;

                          // if (val == null || val.isEmpty) {
                          //   return "Latitude Harap Diisi";
                          // }
                          // return null;
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        controller: longitudeController,
                        enabled: false,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            labelText: "${position0?.longitude}",
                            prefixIcon: const Icon(
                              Icons.map,
                              size: 24.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onTap: () {},
                        onChanged: (value) {
                          longitudeController.text = "${position0?.longitude}";
                        },
                        validator: (val) {
                          return null;

                          // if (val == null || val.isEmpty) {
                          //   return "Longitude Harap Diisi";
                          // }
                          // return null;
                        },
                      ),

                      //buat tombol simpan datanya
                      BlocConsumer<HistoryAbsensiOfflineTransferBloc,
                          HistoryAbsensiOfflineTransferState>(
                        listener: (context, state) {
                          // TODO: implement listener

                          //kasih feedback kalau error
                          if (state is HistoryAbsensiOfflineTransferError) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Maaf, terjadi kesalahan"),
                            ));
                          }

                          if (state is HistoryAbsensiOfflineTransferLoaded) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          }
                        },
                        builder: (context, state) {
                          if (state is HistoryAbsensiOfflineTransferLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return Card(
                            color: Colors.teal,
                            elevation: 5,
                            child: SizedBox(
                              height: 50,
                              child: InkWell(
                                splashColor: Colors.white,
                                onTap: () async {
                                  if (clockInFormKey.currentState!.validate()) {
                                    final model =
                                        HistoryAbsensiOfflineTransferModel(
                                            autoNo: 1,
                                            terminalId: 2,
                                            pinid: "1",
                                            tanggal: "2022-03-10",
                                            verifyResult: 1,
                                            functionKey: 1,
                                            recover: false,
                                            sumber: "HP",
                                            bundleNo: 0,
                                            mesinId: "1",
                                            latitude: position0!.latitude,
                                            longitude: position0!.longitude
                                            // latitude: 23,
                                            // longitude: 40
                                            );
                                    print(model);
                                    context
                                        .read<
                                            HistoryAbsensiOfflineTransferBloc>()
                                        .add(
                                            AddHistoryAbsensiOfflineTransferEvent(
                                                data: model));
                                  }
                                },
                                child: const Center(
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20.0,
              ),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.blueGrey,
              //   ),
              //   onPressed: () async {
              //     Position position = await getLocation();
              //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //         content: Text(
              //             "Lokasi Anda Saat Ini : Latitude : ${position.latitude} dan Longitude : ${position.longitude}")));
              //     setState(() {
              //       latitude = position.latitude;
              //       longitude = position.longitude;
              //     });
              //   },
              //   child: const Text(
              //     "Save",
              //     style: TextStyle(
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
