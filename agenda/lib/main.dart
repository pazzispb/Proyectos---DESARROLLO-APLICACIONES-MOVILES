import 'package:agenda/screens/home_screen.dart';
import 'package:agenda/themes/agenda_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(Agenda());

class Agenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AgendaTheme.light(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen(),
    );
  }
}
