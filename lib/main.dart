import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;
  var countQuestion = 0;

  void _answerQuestion(int score) {
    print('Boton pulsado ');
    totalScore = totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  void resetQuiz(){
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'what is your favourite color',
        'answers': [
          {'text': 'Black', 'score': 5},
          {'text': 'White', 'score': 10},
          {'text': 'Green', 'score': 15},
          {'text': 'Blue', 'score': 20}
        ]
      },
      {
        'question': 'what is your favourite song',
        'answers': [
          {'text': 'sdfdsf', 'score': 5},
          {'text': 'asdas', 'score': 10},
          {'text': 'tyu', 'score': 20},
          {'text': 'Blwerack', 'score': 25}
        ]
      },
      {
        'question': 'what is your favourite food',
        'answers': [
          {'text': 'macarrones', 'score': 5},
          {'text': 'espaguetis', 'score': 10},
          {'text': 'atun', 'score': 15},
          {'text': 'albondigas', 'score': 20}
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: questions,
                )
              : Result(totalScore, resetQuiz)),
    );
  }
}
