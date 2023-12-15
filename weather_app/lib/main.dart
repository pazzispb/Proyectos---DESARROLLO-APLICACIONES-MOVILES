import 'package:flutter/material.dart';
import 'package:weather_app/location_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LocationPage(),
    );
  }
}
