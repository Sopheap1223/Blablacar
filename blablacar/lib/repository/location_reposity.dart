
import 'package:Project/model/ride/locations.dart';

abstract class LocationReposity {
  List<Location> getLocations();

  void addLocation(Location location);
}