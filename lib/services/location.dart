import 'package:geolocator/geolocator.dart';

class Location {

  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try{
      Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;
      Position position = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      );
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e){
      print(e.message);
    }
  }

}


