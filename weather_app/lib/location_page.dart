import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/weather.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  bool isLoading = true;
  double? temperature;
  Weather weather = Weather();

  @override
  void initState() {
    getCurrentWeather();
    super.initState();
  }

  Future<void> getCurrentWeather() async {
    setState(() {
      isLoading = true;
    });

    await weather.getCurrentWeather();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clima'),
      ),
      body: Center(
        child: isLoading
            ? const SpinKitFadingCube(
                color: Colors.blue,
                size: 50.0,
              )
            : Chip(
              label: Text(
                  weather.temperature.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
            ),
      ),
    );
  }
}
