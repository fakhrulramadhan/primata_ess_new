import 'dart:async';

import 'package:location/location.dart';
import 'package:primata_ess_new/data/model/user_location_model.dart';

class LocationService {
  Location location = Location();
  final StreamController<UserLocationModel> _locationStreamController =
      StreamController<UserLocationModel>();
  Stream<UserLocationModel> get locationStream =>
      _locationStreamController.stream;

  LocationService() {
    location.requestPermission().then((permissionStatus) {
      if (permissionStatus == PermissionStatus.granted) {
        location.onLocationChanged.listen((locationData) {
          _locationStreamController.add(UserLocationModel(
              latitude: locationData.latitude,
              longitude: locationData.longitude));
        });
      }
    });
  }

  void dispose() => _locationStreamController.close();
}
