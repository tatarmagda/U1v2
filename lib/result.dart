import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText;
    if (resultScore > 29) {
      resultText = "Bravo, you guess everything";
    } else if (resultScore > 10) {
      resultText = "You mostly did it";
    } else
      resultText = "Better try again";

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
