import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'location.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  bool isLoading = true; // Track the loading state

  Future<void> getCurrentPositionData() async {
    setState(() {
      isLoading = true;
    });

    Location location = Location();
    await location.getCurrentLocation();

    setState(() {
      isLoading = false;
      print(location.latitude);
      print(location.longitude);
    });
  }

  @override
  void initState() {
    getCurrentPositionData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: isLoading
            ? const SpinKitFadingCube(
                color: Colors.blue,
                size: 50.0,
              )
            : null,
      ),
    );
  }
}
