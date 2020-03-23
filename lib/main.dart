import 'package:flutter/material.dart';
import 'package:weather/screens/get_location.dart';
// import 'package:weather_forecaster/screens/get_location.dart';
// import 'package:weather_forecaster/screens/get_location.dart';
// import 'package:weather_forecaster/screens/splash.dart';

// import 'screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: GetLocation(),
    );
  }
}
