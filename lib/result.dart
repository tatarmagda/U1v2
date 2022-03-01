import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

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
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Try again"),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
