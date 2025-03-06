
import 'package:Project/model/ride/locations.dart';
import 'package:Project/repository/location_reposity.dart';

class MockLocationReposity extends LocationReposity {
  List<Location> _getlocations = [
    Location(name: "Phnom Penh", country: Country.khmer),
    Location(name: "Siem Reap", country: Country.khmer),
    Location(name: "Battambang", country: Country.khmer),
    Location(name: "Sihanoukville", country: Country.khmer),
    Location(name: "Kompot", country: Country.khmer),
  ];

  @override
  void addLocation(Location location) {
    _getlocations.add(location);
  }

  @override
  List<Location> getLocations() {
    return _getlocations;
  }

}