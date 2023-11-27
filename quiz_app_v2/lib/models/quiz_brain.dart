import '/data/questions.dart';

class QuizBrain{
  bool _isOver = false; // flag para indicar si el juego se ha terminado

  //Atributo par controlar el numero de pregunta
  int _questionNumber = 0;

  // funcion para pasar a la siguiente pregunta
  void nextQuestion() {
    if(_questionNumber < questions.length - 1){
      _questionNumber++;
    }
    else{
      _isOver = true;
    }
  }

  bool get getIsOver{
    return _isOver;
  }

  String get getQuestionText{
    return questions[_questionNumber].question;
  }

  //vamos a barajar las respuestas
  List<String> get getShuffleredAnswers{
    //copiar la lista original de respuestas
    final shuffleredList = List.of(questions[_questionNumber].answers);

    shuffleredList.shuffle();
    return shuffleredList;
  }

  bool checkAnswer(String userAnswer){
    return questions[_questionNumber].answers[0] == userAnswer;
  }

}