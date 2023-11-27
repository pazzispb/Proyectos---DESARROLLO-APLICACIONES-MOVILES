import 'package:flutter/material.dart';
import 'package:quiz_app_v2/constants/constants.dart';
import 'package:quiz_app_v2/quiz_page.dart';
import 'package:quiz_app_v2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  Widget? activeScreen;


  @override
  void initState() { //se ejecuta antes del build
    // TODO: implement initState
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
  //Metodo para cambiar a la pantalla QuizPage
  void switchScreen(){
    setState(() {
      activeScreen = QuizPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Container(
          decoration: kContainerStyle,
          child: activeScreen,
        ),
      ),
    );
  }
}

