import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function handler;
  Answer({this.handler,this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity ,
      child: RaisedButton(
        color: Colors.blue,
        child:Text(this.answerText
        ,style:TextStyle(color: Colors.white),
        ),
        onPressed: handler,
      ),
    );
  }
}
