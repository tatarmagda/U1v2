// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(answerText),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: selectHandler,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0))),
    );
  }
}
