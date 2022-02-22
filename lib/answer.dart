// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: const Text(
            "1",
          ),
          color: Colors.blue,
          onPressed: selectHandler,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0))),
    );
  }
}
