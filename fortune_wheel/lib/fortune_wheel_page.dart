import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class FortuneWheelHome extends StatefulWidget {
  const FortuneWheelHome({super.key});

  @override
  State<FortuneWheelHome> createState() => _FortuneWheelHomeState();
}

class _FortuneWheelHomeState extends State<FortuneWheelHome> {
  StreamController<int> selected = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    final items = <String>[
      'Si',
      'No',
      'Si',
      'No',
      'Si',
      'No',
      'Si',
      'No',
      'Si',
      'No',
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text('¿Te quiere?',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple.withOpacity(0.15)
          ),
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            onTap: (){
              setState(() {
                selected.add(
                  Fortune.randomInt(0, items.length),
                );
              });
            },
            child: Column(
              children: [
                const Text("¡Haz click sobre la ruleta para descubrirlo!"),
                Expanded(
                  child: FortuneWheel(
                    onFling: (){
                      setState(() {
                        selected.add(
                          Fortune.randomInt(0, items.length),
                        );
                      });
                    },
                    selected: selected.stream,
                    items: [
                      for (var it in items) FortuneItem(child: Text(it)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
