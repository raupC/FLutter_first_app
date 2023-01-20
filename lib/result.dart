import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  final int resultScore;
  final Function resetQuiz;

  const Result(this.resultScore, this.resetQuiz);

  
  
  String get resultText{
    String restext = '';

    if (resultScore <= 20){
      restext = 'You are awesome and innocent';
    } else if(resultScore <= 40){
      restext = 'You are awesome and innocent';
    } else if(resultScore <= 60){
      restext = 'You are awesome and innocent';
    } else{
      restext = 'Fuck YOUUUUU';
    }

    return restext;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: resetQuiz, 
              child: Text("RESET"))
        ],
      ),
    );
  }
}