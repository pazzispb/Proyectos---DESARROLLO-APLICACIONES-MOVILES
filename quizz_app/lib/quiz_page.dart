import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizz_app/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//instanciar a la clases QuizBrain
QuizBrain quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  void checkAnswer(bool userAnswer) {
    final correctAnswer = quizBrain.getQuestionAnswer;
    setState(() {
      if (!quizBrain.getIsOver) {
        if (userAnswer == correctAnswer) {
          scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
        } else {
          scoreKeeper.add(const Icon(Icons.close, color: Colors.red));
        }
        quizBrain.nextQuestion();
      }

      if (quizBrain.getIsOver) {
        Alert(
            context: context,
            title: "!Haz terminado el juego!",
            style: const AlertStyle(
                animationType: AnimationType.fromTop,
                isCloseButton: false,
                isOverlayTapDismiss: false,
                animationDuration: Duration(milliseconds: 400),
                titleStyle: TextStyle(fontWeight: FontWeight.bold)),
            desc:
                "Obtuviste un puntaje de ${scoreKeeper.where((e) => e.color == Colors.green).length}",
            buttons: [
              DialogButton(
                onPressed: () => Navigator.pop(context),
                width: 120,
                child: const Text(
                  "OK",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ]).show();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text('Quizz App',
              style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w700)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(quizBrain.getQuestionText,
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 24.0)),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    checkAnswer(true);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('True',
                      style: TextStyle(color: Colors.white, fontSize: 16.0)),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    checkAnswer(false);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text(
                    'False',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: scoreKeeper),
            )
          ],
        ));
  }
}
