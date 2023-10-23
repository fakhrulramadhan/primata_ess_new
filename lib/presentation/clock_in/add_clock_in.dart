import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:primata_ess_new/bloc/gmap/gmap_bloc.dart';
import 'package:primata_ess_new/bloc/history_absensi_offline_transfer/history_absensi_offline_transfer_bloc.dart';
import 'package:primata_ess_new/data/model/Absensi_In_Out/history_absensi_offline_transfers_model.dart';
import 'package:primata_ess_new/presentation/home/home_page.dart';

class AddClockIn extends StatefulWidget {
  const AddClockIn({super.key});

  @override
  State<AddClockIn> createState() => _AddClockInState();
}

class _AddClockInState extends State<AddClockIn> {
  Future<HistoryAbsensiOfflineTransferModel>? _HistoryAbsenOfflineTransfer;
  //LocationService locationService = LocationService();

  String now = DateTime.now().toString();

  var _latitudeController = TextEditingController();
  var _longitudeController = TextEditingController();

  String formatTgl = DateFormat('dd/MM/yyyy').format(DateTime.now());
  String formatTime = DateFormat('hh:mm').format(DateTime.now());
  String formatHari = DateFormat('EEEE').format(DateTime.now());

  LatLng? position;

  @override
  void initState() {
    super.initState();

    _latitudeController = TextEditingController();
    _longitudeController = TextEditingController();

    context.read();
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
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  enabled: false,
                  labelText: formatTgl,
                  prefixIcon: const Icon(
                    Icons.brightness_4,
                    size: 24.0,
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  enabled: false,
                  labelText: formatTime,
                  prefixIcon: const Icon(
                    Icons.alarm,
                    size: 24.0,
                  ),
                ),
                onTap: () {},
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 10.0,
              ),
              //buat build latitude longitudenya
              BlocConsumer<GmapBloc, GmapState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loaded: (model) {
                      position = model.latLng;

                      return Column(
                        children: [
                          TextFormField(
                            controller: _latitudeController,
                            enabled: false,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                                labelText: "${position!.latitude}",
                                prefixIcon: const Icon(
                                  Icons.map,
                                  size: 24.0,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16))),
                            onTap: () {},
                            onChanged: (value) {
                              _latitudeController.text =
                                  "${position!.latitude}";
                            },
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            controller: _longitudeController,
                            enabled: false,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                                labelText: "${position!.longitude}",
                                prefixIcon: const Icon(
                                  Icons.map,
                                  size: 24.0,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16))),
                            onTap: () {},
                            onChanged: (value) {
                              _longitudeController.text =
                                  "${position!.longitude}";
                            },
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              //buat tombol simpan datanya
              BlocConsumer<HistoryAbsensiOfflineTransferBloc,
                  HistoryAbsensiOfflineTransferState>(
                listener: (context, state) {
                  // TODO: implement listener

                  //kasih feedback kalau error
                  if (state is HistoryAbsensiOfflineTransferError) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Maaf, ada Data yang belum diisi"),
                    ));
                  }

                  if (state is HistoryAbsensiOfflineTransferLoaded) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
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
                          final model = HistoryAbsensiOfflineTransferModel(
                              autoNo: 1,
                              terminalId: 2,
                              pinid: "1",
                              tanggal: DateTime.now(),
                              verifyResult: 1,
                              functionKey: 1,
                              recover: false,
                              sumber: "HP",
                              bundleNo: 0,
                              mesinId: "1",
                              latitude: position!.latitude,
                              longitude: position!.longitude);
                          context.read<HistoryAbsensiOfflineTransferBloc>().add(
                              AddHistoryAbsensiOfflineTransferEvent(
                                  data: model));
                        },
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
