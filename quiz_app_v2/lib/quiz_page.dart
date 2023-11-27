import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_v2/models/quiz_brain.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizBrain brain = QuizBrain();
  late String currentQuestion;
  late Iterable<AnswerButton> shuffleredAnswers;

  void checkAnswer(String userAnswer) {
    setState(() {
      if (!brain.getIsOver) {
        if (brain.checkAnswer(userAnswer)) {
          log('Bien');
        } else {
          log('Mal');
        }
        brain.nextQuestion();
        if (brain.getIsOver) {
          log('Se acabo');
        } else {
          currentQuestion = brain.getQuestionText;
          ShuffleAnswers();
        }
      }
    });
  }

  void ShuffleAnswers() {
    if(!brain.getIsOver){
      shuffleredAnswers = brain.getShuffleredAnswers.map((answer) {
        return AnswerButton(
            text: answer,
            onTap: () {
              checkAnswer(answer);
            });
      });
    }
  }

  @override
  void initState() {
    super.initState();
    currentQuestion = brain.getQuestionText;
    ShuffleAnswers();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              brain.getQuestionText,
              style: GoogleFonts.lato(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 201, 153, 251),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...shuffleredAnswers
          ],
        ),
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key, required this.text, required this.onTap});

  String text;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 23, 1, 95),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: onTap,
          child: Text(
            text,
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251)),
            textAlign: TextAlign.center,
          )),
    );
  }
}
