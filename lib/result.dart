import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreFinal;
  Function resetQuiz;

  Result({this.scoreFinal, this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text("Total Score : $scoreFinal ",
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
      ),
      FlatButton(
        child: Text("reset Quiz"),
        onPressed: resetQuiz,
      )
    ]));
  }
}
