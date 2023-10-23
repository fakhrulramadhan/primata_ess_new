import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:primata_ess_new/bloc/gmap/gmap_bloc.dart';
import 'package:primata_ess_new/bloc/history_absensi_offline_transfer/history_absensi_offline_transfer_bloc.dart';
import 'package:primata_ess_new/data/model/Absensi_In_Out/history_absensi_offline_transfers_model.dart';

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
                onChanged: (value) {
                  
                },
                
              ),
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
                      posi
                    },
                    );
                  },
                ),
              //buat tombol simpan datanya
              BlocBuilder<HistoryAbsensiOfflineTransferBloc,
                  HistoryAbsensiOfflineTransferState>(
                builder: (context, state) {
                  return Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
