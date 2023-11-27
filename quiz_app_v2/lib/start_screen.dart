import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constants.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: kContainerStyle,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'images/quiz-logo.png',
              color: Color.fromARGB(150, 255, 255, 255),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
            Text('Learn Flutter The Fun Way',
                style: GoogleFonts.lato(color: Colors.white, fontSize: 24)),
            SizedBox(height:30),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                onPressed: startQuiz,
                icon: Icon(Icons.arrow_right_alt),
                label: Text("Start"))
          ],
        ),
      ),
    );
  }
}
