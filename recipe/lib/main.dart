import 'package:flutter/material.dart';
import 'package:recipe/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black
        )
      ),
      title: 'Recipe App',
      home: HomeScreen(title: 'Recipe App'),
    );
  }
}