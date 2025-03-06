

import 'package:Project/model/ride/locations.dart';
import 'package:Project/repository/location_reposity.dart';

import '../dummy_data/dummy_data.dart';

////
///   This service handles:
///   - The list of available rides
///
class LocationsService {

  static const List<Location> availableLocations = fakeLocations;

  

  static LocationsService? _instance;
  final LocationReposity reposity;
  Location? _currentLocation;
  LocationsService._internal(this.reposity);

  static void initialize (LocationReposity repository){
    if (_instance == null) {
      _instance = LocationsService._internal(repository);
    }else{
      throw Exception("LocationsService is already initialized");
    }
  }

  static LocationsService get instance {
    if (_instance == null) {
      throw Exception("LocationsService is not initialized");
    }
    return _instance!;
  }
  Location? get currentLocation {
    print("Getting current location: $_currentLocation");
    return _currentLocation;
  }
  
  void setCurrentPreference(Location location) {
    _currentLocation = location;
    print("Setting current location: $_currentLocation");
  }
  List<Location> getLocations() {
    return reposity.getLocations();
  }
  void addLocation(Location location) {
    reposity.addLocation(location);
 
}
}