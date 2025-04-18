import 'package:Project/model/ride/locations.dart';
import 'package:Project/repository/mock/mock_location_reposity.dart';
import 'package:Project/repository/mock/mock_ride_preferences_repository.dart';
import 'package:Project/service/locations_service.dart';
import 'package:flutter/material.dart';

import 'screens/ride_pref/ride_pref_screen.dart';
import 'service/ride_prefs_service.dart';
import 'theme/theme.dart';

void main() {

  // 1 - Initialize the services
  RidePrefService.initialize(MockRidePreferencesRepository());

  LocationsService.initialize(MockLocationReposity());

  // 2- Run the UI
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(body: RidePrefScreen()),
    );
  }
}
