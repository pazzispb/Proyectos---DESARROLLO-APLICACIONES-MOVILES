import 'package:flutter/material.dart';
import 'package:social_food/card_1.dart';
import 'package:social_food/card_2.dart';
import 'package:social_food/card_3.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //atributos

  int _selectedItem = 0; //atributo privado

  List<Widget> pages = [
    const Card1(),
    const Card2(),
    const Card3()
  ];

  //funcion para cambia de 'pantalla' al cambiar el tab

  void _onItemTapped(int index){

    setState(() {
      _selectedItem = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Social Food',
        style: Theme.of(context).textTheme.headlineLarge
        ),
      ),
      body: pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: _onItemTapped, //callback, automaticamente para el indice del boton presionado a la funcion
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card 1'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card 2'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card 3'
          )
        ],

      ),
    );
  }
}


