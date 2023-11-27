import 'question.dart';

class QuizBrain{

  int _questionNumber = 0; //indice de la lista
  bool _isOver = false; // flag para indicar si el juego se ha terminado

  final List<Question> _questionList = [
    Question(
      "The programming language \"Python\" is based off a modified version of \"JavaScript\".",
      false,
    ),
    Question(
      "RAM stands for Random Access Memory.",
      true,
    ),
    Question(
      "Ada Lovelace is often considered the first computer programmer.",
      true,
    ),
    Question(
      "\"HTML\" stands for Hypertext Markup Language.",
      true,
    ),
    Question(
      "In most programming languages, the operator ++ is equivalent to the statement \"+= 1\".",
      true,
    ),
    Question(
      "Time on Computers is measured via the EPOX System.",
      false,
    ),
    Question(
      "The Windows ME operating system was released in the year 2000.",
      true,
    ),
    Question(
      "The NVidia GTX 1080 gets its name because it can only render at a 1920x1080 screen resolution.",
      false,
    ),
    Question(
      "Linux was first created as an alternative to Windows XP.",
      false,
    ),
    Question(
      "The Python programming language gets its name from the British comedy group \"Monty Python\".",
      true,
    ),
  ];

  //propiedades getter
  String get getQuestionText{
    return _questionList[_questionNumber].question;
  }

  bool get getQuestionAnswer{
    return _questionList[_questionNumber].answer;
  }

  bool get getIsOver{
    return _isOver;
  }

  //metodos
  void nextQuestion(){
    if(_questionNumber < _questionList.length - 1){
      _questionNumber++;
    }
    else{
      _isOver = true;
    }
  }
}