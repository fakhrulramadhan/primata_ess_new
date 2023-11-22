import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:primata_ess_new/bloc/history_absensi_offline_transfer/history_absensi_offline_transfer_bloc.dart';
import '../../data/model/Absensi_In_Out/history_absensi_offline_transfers_model.dart';

class ClockoutPage extends StatefulWidget {
  const ClockoutPage({super.key});

  @override
  State<ClockoutPage> createState() => _ClockoutPageState();
}

class _ClockoutPageState extends State<ClockoutPage> {
  Future<HistoryAbsensiOfflineTransferModel>? HistoryAbsenOfflineTransfer;

  String now = DateTime.now().toString();
  String formatTgl = DateFormat('dd/MM/yyyy').format(DateTime.now());
  String formatTime = DateFormat('hh:mm').format(DateTime.now());
  String formatHari = DateFormat('EEEE').format(DateTime.now());

  final tglController = TextEditingController();
  final waktuController = TextEditingController();
  var latitudeController = TextEditingController();
  var longitudeController = TextEditingController();

  LatLng? position;

  late bool serviceEnabled;
  late PermissionStatus permissionGranted;

  final clockOutFormKey = GlobalKey<FormState>();

  String currentAddress = "";

  StreamSubscription<Position>? positionStreamSubscription;

  bool positionStreamStarted = false;

  Position? position0;

  double? latitude;
  double? longitude;

  Future<Position> _determinePosition() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();

    print("Permission: $permission");

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location has denied");
      }
    }

    return await Geolocator.getCurrentPosition();
  }

  void _getCurrentLocation() async {
    Position position = await _determinePosition();
    setState(() {
      position0 = position; //nilai position dilempar ke position0
    });
  }

  @override
  void initState() {
    latitudeController = TextEditingController();
    longitudeController = TextEditingController();
    waktuController.text = formatTime;
    tglController.text = formatTgl;

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _getCurrentLocation();
    });

    //super.initState();
  }

  Future<void> _sweetAlert() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Not Available"),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Not available for demo version"),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("OK"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Form(
                  key: clockOutFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: tglController,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: const InputDecoration(
                          enabled: false,
                          prefixIcon: Icon(
                            Icons.developer_board,
                            size: 24.0,
                          ),
                        ),
                        onTap: () {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
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
                        enabled: false,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: const InputDecoration(
                          enabled: false,
                          prefixIcon: Icon(
                            Icons.alarm,
                            size: 24.0,
                          ),
                        ),
                        onTap: () {},
                        onChanged: (value) {
                          print(formatTime);
                        },
                        validator: (value) {
                          print(value);
                          if (value == null || value.isEmpty) {
                            return "Format waktu harap diisi";
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
                            labelText: "${position0!.latitude}",
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
                        },
                      ),
                      //bloc consumer taruh di tombol simpan
                      BlocConsumer<HistoryAbsensiOfflineTransferBloc,
                          HistoryAbsensiOfflineTransferState>(
                        listener: (context, state) {
                          // TODO: implement listener
                          if (state is HistoryAbsensiOfflineTransferError) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Maaf terjadi kesalahan"),
                            ));
                          }

                          if (state is HistoryAbsensiOfflineTransferLoaded) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Container()),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Sukses Clock Out"),
                            ));
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
                              height: 50.0,
                              child: InkWell(
                                splashColor: Colors.white,
                                onTap: () async {
                                  if (clockOutFormKey.currentState!
                                      .validate()) {
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
                                            longitude: position0!.longitude);

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
                                    "SUbmit",
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
                      )
                    ],
                  )),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
