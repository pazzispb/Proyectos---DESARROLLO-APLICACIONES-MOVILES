import 'package:agenda/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Agenda());

class Agenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}
