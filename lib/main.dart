import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyState();
  }
}

class _MyState extends State<MyApp> {

  int _totalScore = 0;
  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _incX(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex++;
    });

  }

  @override
  Widget build(BuildContext context) {
    const _questionBank = const [
      {
        "questionText": "What's your favourite color?",
        "answer": [
            {"opt":"Red","score":10}, {"opt":"Blue","score":5},
            {"opt":"Green","score":8}, {"opt":"Orange","score":3}
          ],
      },
      {
        "questionText": "What's your favourite animal?",
        "answer": [
          {"opt":"Rabbit","score":10}, {"opt":"Snake","score":7},
          {"opt":"Elephant","score":9}, {"opt":"Lion","score":4}
         ],
      },
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text("Quiz App"),),
          body: (_questionIndex < 2)
              ? Quiz(
                  questions: _questionBank,
                  questionIndex: _questionIndex,
                  answerQuestion: _incX,
                )
              : Result(scoreFinal: _totalScore,resetQuiz: _resetQuiz, )),
    );
  }
}
