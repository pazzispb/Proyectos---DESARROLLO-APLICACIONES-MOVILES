import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //crear una funcion para seleccionar las imagenes de manera
  var rnd = Random();

  int dado = 1;
  int dado2 = 1;

  void lanzarDados() {
    setState(() {
      dado = rnd.nextInt(6) + 1;
      dado2 = rnd.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazar dados', style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.lightBlueAccent,
              Colors.indigo
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('¡Arroja los dados y prueba tu suerte!', style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  lanzarDados();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/dice-$dado.png',
                      width: 150.0,
                    ),
                    Image.asset(
                      'images/dice-$dado2.png',
                      width: 150.0,
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
