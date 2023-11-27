import 'package:flutter/material.dart';
import 'package:fortune_wheel/fortune_wheel_page.dart';

void main() => runApp(FortuneWheelApp());

class FortuneWheelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fortune Wheel App',
      debugShowCheckedModeBanner: false,
      home: FortuneWheelHome(),
    );
  }
}
